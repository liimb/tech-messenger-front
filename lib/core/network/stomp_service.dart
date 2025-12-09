import 'dart:async';
import 'package:stomp_dart_client/stomp_dart_client.dart';
import 'package:tech_messenger/app/app_logger.dart';

class StompService {
  StompService({required this.url});

  StompClient? _client;
  final String url;
  bool _active = false;

  final Map<String, StreamController<StompFrame>> _controllers = {};
  final Map<String, StompUnsubscribe?> _unsubscribes = {};
  Timer? _reconnectTimer;
  Completer<void>? _connectCompleter;

  final StreamController<bool> _connectionController =
      StreamController<bool>.broadcast();
  Stream<bool> get onConnectionStateChanged => _connectionController.stream;
  bool get isActive => _active;

  Future<void> activate({Duration timeout = const Duration(seconds: 10)}) {
    if (_active) return Future.value();
    if (_connectCompleter != null) return _connectCompleter!.future;

    _connectCompleter = Completer<void>();

    _client = StompClient(
      config: StompConfig.sockJS(
        url: url,
        onConnect: (frame) {
          AppLogger.info("WebSocket клиент успешно подключен");
          _active = true;
          _cancelReconnect();
          if (!_connectionController.isClosed) _connectionController.add(true);

          _resubscribeAll();

          if (_connectCompleter != null && !_connectCompleter!.isCompleted) {
            _connectCompleter!.complete();
          }
        },
        onStompError: (error) {
          AppLogger.error("Stomp ошибка: $error");
          if (_connectCompleter != null && !_connectCompleter!.isCompleted) {
            _connectCompleter!.completeError(Exception('STOMP error: $error'));
          }
          _scheduleReconnect();
        },
        onWebSocketError: (error) {
          AppLogger.error("WebSocket ошибка: $error");
          if (_connectCompleter != null && !_connectCompleter!.isCompleted) {
            _connectCompleter!.completeError(
              Exception('WebSocket error: $error'),
            );
          }
          _scheduleReconnect();
        },
        onDisconnect: (_) {
          AppLogger.warning("WebSocket клиент не подключен");
          _active = false;
          if (!_connectionController.isClosed) _connectionController.add(false);
          _scheduleReconnect();
        },
      ),
    );

    _client!.activate();

    return _connectCompleter!.future
        .timeout(
          timeout,
          onTimeout: () {
            try {
              deactivate();
            } catch (_) {}
            if (_connectCompleter != null && !_connectCompleter!.isCompleted) {
              _connectCompleter!.completeError(
                TimeoutException('Timeout while connecting to STOMP', timeout),
              );
            }
            throw TimeoutException(
              'Timeout while connecting to STOMP',
              timeout,
            );
          },
        )
        .whenComplete(() {
          _connectCompleter = null;
        });
  }

  void deactivate() {
    _cancelReconnect();
    _unsubscribeAll();
    try {
      _client?.deactivate();
    } catch (e) {
      AppLogger.error('Error during deactivate: $e');
    }
    _active = false;
    if (!_connectionController.isClosed) _connectionController.add(false);
    _client = null;

    if (_connectCompleter != null && !_connectCompleter!.isCompleted) {
      _connectCompleter!.completeError(
        Exception('Deactivated before connect finished'),
      );
      _connectCompleter = null;
    }
  }

  void _scheduleReconnect() {
    if (_reconnectTimer != null && _reconnectTimer!.isActive) return;

    _reconnectTimer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_active) {
        _cancelReconnect();
      } else {
        AppLogger.info("Попытка переподключения WebSocket...");
        try {
          activate();
        } catch (e) {
          AppLogger.error('activate error in reconnect: $e');
        }
      }
    });
  }

  void _cancelReconnect() {
    _reconnectTimer?.cancel();
    _reconnectTimer = null;
  }

  Stream<StompFrame> subscribe(String topic, {Map<String, String>? headers}) {
    if (_controllers.containsKey(topic)) {
      final existing = _controllers[topic]!;
      if (_active && _unsubscribes[topic] == null) {
        _subscribeTopic(topic, existing, headers: headers);
      }
      return existing.stream;
    }

    final c = StreamController<StompFrame>.broadcast();

    _controllers[topic] = c;

    c.onListen = () {
      if (_active && _unsubscribes[topic] == null) {
        _subscribeTopic(topic, c, headers: headers);
      }
    };

    c.onCancel = () {
      if (!c.hasListener) {
        _unsubscribeTopic(topic);
        if (!c.isClosed) {
          c.close();
        }
        _controllers.remove(topic);
      }
    };

    if (_active && _unsubscribes[topic] == null) {
      _subscribeTopic(topic, c, headers: headers);
    }

    return c.stream;
  }

  void _subscribeTopic(
    String topic,
    StreamController<StompFrame> controller, {
    Map<String, String>? headers,
  }) {
    try {
      final unsubscribe = _client!.subscribe(
        destination: topic,
        callback: (frame) {
          if (!controller.isClosed) controller.add(frame);
        },
        headers: headers ?? {},
      );
      _unsubscribes[topic] = unsubscribe;
      AppLogger.info('Subscribed to $topic');
    } catch (e, st) {
      AppLogger.error('Failed to subscribe $topic: $e\n$st');
    }
  }

  void _unsubscribeTopic(String topic) {
    try {
      final unsub = _unsubscribes[topic];
      if (unsub != null) {
        unsub.call();
      }
    } catch (e) {
      AppLogger.error('Error during unsubscribe for $topic: $e');
    } finally {
      _unsubscribes.remove(topic);
    }
  }

  void _resubscribeAll() {
    _unsubscribes.forEach((topic, unsub) {
      try {
        if (unsub != null) unsub.call();
      } catch (_) {}
    });
    _unsubscribes.clear();

    _controllers.forEach((topic, controller) {
      if (controller.isClosed || !controller.hasListener) return;
      _subscribeTopic(topic, controller);
    });
  }

  void _unsubscribeAll() {
    _unsubscribes.forEach((topic, unsub) {
      try {
        if (unsub != null) unsub.call();
      } catch (e) {
        AppLogger.error('Error unsubscribing $topic: $e');
      }
    });
    _unsubscribes.clear();
  }

  /// Очищает все контроллеры и подписки, используется при выходе из аккаунта
  void clearAllSubscriptions() {
    _unsubscribeAll();
    _controllers.forEach((_, c) {
      try {
        if (!c.isClosed) c.close();
      } catch (_) {}
    });
    _controllers.clear();
  }

  void send({
    required String destination,
    String? body,
    Map<String, String>? headers,
  }) {
    if (!_active || _client == null) return;
    try {
      _client!.send(
        destination: destination,
        body: body ?? '',
        headers: headers ?? {},
      );
    } catch (e, st) {
      AppLogger.error('Ошибка при send: $e\n$st');
    }
  }

  Future<void> dispose() async {
    _cancelReconnect();
    _unsubscribeAll();
    _controllers.forEach((_, c) {
      try {
        if (!c.isClosed) c.close();
      } catch (_) {}
    });
    _controllers.clear();
    try {
      _client?.deactivate();
    } catch (_) {}
    _client = null;
    _active = false;
    if (!_connectionController.isClosed) await _connectionController.close();
  }
}
