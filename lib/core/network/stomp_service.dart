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

  void activate() {
    if (_active || _client != null) return;

    _client = StompClient(
      config: StompConfig.sockJS(
        url: url,
        onConnect: (frame) {
          AppLogger.info("WebSocket клиент успешно подключен");
          _active = true;
          _cancelReconnect();
        },
        onStompError: (error) {
          AppLogger.error("Stomp ошибка: $error");
          _scheduleReconnect();
        },
        onWebSocketError: (error) {
          AppLogger.error("WebSocket ошибка: $error");
          _scheduleReconnect();
        },
        onDisconnect: (_) {
          AppLogger.warning("WebSocket клиент не подключен");
          _active = false;
          _scheduleReconnect();
        },
      ),
    );

    _client!.activate();
  }

  void deactivate() {
    _cancelReconnect();
    _client?.deactivate();
    _active = false;
    for (final c in _controllers.values) {
      if (!c.isClosed) c.close();
    }
    _controllers.clear();
    _unsubscribes.clear();
    _client = null;
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

  bool get isActive => _active;

  void _scheduleReconnect() {
    if (_reconnectTimer != null && _reconnectTimer!.isActive) return;

    _reconnectTimer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_active) {
        _cancelReconnect();
      } else {
        AppLogger.info("Попытка переподключения WebSocket...");
        activate();
      }
    });
  }

  void _cancelReconnect() {
    _reconnectTimer?.cancel();
    _reconnectTimer = null;
  }
}
