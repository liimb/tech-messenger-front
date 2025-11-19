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

  // Для уведомления о смене состояния подключения (опционально)
  final StreamController<bool> _connectionController =
      StreamController<bool>.broadcast();

  Stream<bool> get onConnectionStateChanged => _connectionController.stream;

  bool get isActive => _active;

  /// Активирует клиент и возвращает Future, который завершится после успешного CONNECT.
  /// Если уже подключен — Future завершается сразу.
  /// Если уже есть процесс подключения — возвращает существующий Future.
  ///
  /// timeout — сколько ждать before throwing a TimeoutException (по умолчанию 10s).
  Future<void> activate({Duration timeout = const Duration(seconds: 10)}) {
    // Если уже подключены — ничего ждать не нужно.
    if (_active) return Future.value();

    // Если уже идёт попытка подключения — вернуть её Future.
    if (_connectCompleter != null) return _connectCompleter!.future;

    _connectCompleter = Completer<void>();

    _client = StompClient(
      config: StompConfig.sockJS(
        url: url,
        onConnect: (frame) {
          AppLogger.info("WebSocket клиент успешно подключен");
          _active = true;
          _cancelReconnect();
          // уведомляем слушателей
          if (!_connectionController.isClosed) _connectionController.add(true);

          // Завершаем completer (если кто-то ждёт)
          if (_connectCompleter != null && !_connectCompleter!.isCompleted) {
            _connectCompleter!.complete();
          }
        },
        onStompError: (error) {
          AppLogger.error("Stomp ошибка: $error");
          // если мы ещё ожидаем подключения — завершить с ошибкой
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

    // Вернуть Future с таймаутом. При таймауте — деактивируем и бросим.
    return _connectCompleter!.future
        .timeout(
          timeout,
          onTimeout: () {
            // очистим/деактивируем клиент — чтобы не оставить висеть
            try {
              deactivate(); // без await — очищает структуры
            } catch (_) {}
            // Очистим completer если он ещё жив (будет перезаписан при следующем activate)
            if (_connectCompleter != null && !_connectCompleter!.isCompleted) {
              _connectCompleter!.completeError(
                TimeoutException('Timeout while connecting to STOMP', timeout),
              );
            }
            // бросаем исключение из timeout handler — future завершится с TimeoutException
            throw TimeoutException(
              'Timeout while connecting to STOMP',
              timeout,
            );
          },
        )
        .whenComplete(() {
          // При завершении (успех/ошибка/таймаут) мы не удаляем completer тут,
          // потому что onConnect/onError уже её завершили. Однако для аккуратности очистим ссылку:
          _connectCompleter = null;
        });
  }

  void deactivate() {
    _cancelReconnect();
    try {
      _client?.deactivate();
    } catch (e) {
      AppLogger.error('Error during deactivate: $e');
    }
    _active = false;

    if (!_connectionController.isClosed) _connectionController.add(false);
    // НЕ закрываем контроллер здесь, т.к. сервис может быть ре-активирован;
    // закройте контроллер в dispose() если добавите такой метод.

    _client = null;

    // Если кто-то всё ещё ждал — уведомим об ошибке
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
          // activate может бросить синхронно — логируем
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
    final controller = _controllers.putIfAbsent(topic, () {
      final c = StreamController<StompFrame>.broadcast();
      if (_client != null && _active) {
        final unsubscribe = _client!.subscribe(
          destination: topic,
          callback: (frame) {
            if (!c.isClosed) c.add(frame);
          },
          headers: headers ?? {},
        );
        _unsubscribes[topic] = unsubscribe;
      } else {
        AppLogger.info(
          'StompService: подписка создана, но клиент не активен: $topic',
        );
      }
      return c;
    });

    return controller.stream;
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
}
