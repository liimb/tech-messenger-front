import 'dart:async';
import 'dart:convert';

import 'package:tech_messenger/app/app_logger.dart';
import 'package:tech_messenger/core/network/stomp_service.dart';
import 'package:tech_messenger/modules/message/domain/model/message_model.dart';
import 'package:tech_messenger/modules/message/domain/repository/message_repository_interface.dart';

class MessagesRepositoryImpl implements IMessageRepository {
  final StompService stomp;
  final Map<String, StreamController<MessageModel>> _controllers = {};

  MessagesRepositoryImpl({required this.stomp});

  @override
  Stream<MessageModel> watchMessages(String chatId) {
    final topic = '/topic/chat/$chatId';
    final controller = _controllers.putIfAbsent(
      topic,
      () => StreamController<MessageModel>.broadcast(),
    );

    stomp.subscribe(topic, headers: {}).listen((frame) {
      if (frame.body == null) return;
      try {
        final json = jsonDecode(frame.body!);
        final msg = MessageModel.fromJson(Map<String, dynamic>.from(json));
        if (!controller.isClosed) controller.add(msg);
      } catch (e) {
        AppLogger.error('Watch messages error:', e);
      }
    });

    return controller.stream;
  }

  @override
  void requestHistory(String chatId, String jwtToken) {
    stomp.send(
      destination: '/app/chat-messages/$chatId',
      body: jsonEncode({}),
      headers: {'jwtToken': jwtToken},
    );
  }

  @override
  void sendMessage(String chatId, MessageModel message, {String? jwtToken}) {
    final body = jsonEncode(message.toJson());
    final headers = jwtToken != null ? {'jwtToken': jwtToken} : null;
    stomp.send(
      destination: '/app/send-message/$chatId',
      body: body,
      headers: headers,
    );
  }

  @override
  Future<void> dispose() async {
    for (final c in _controllers.values) {
      if (!c.isClosed) c.close();
    }
    _controllers.clear();
  }
}
