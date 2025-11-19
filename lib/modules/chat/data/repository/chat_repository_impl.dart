import 'dart:async';
import 'dart:convert';
import 'package:tech_messenger/app/app_logger.dart';
import 'package:tech_messenger/core/network/stomp_service.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat_model.dart';
import 'package:tech_messenger/modules/chat/domain/repository/chat_repository_interface.dart';

class ChatRepository implements IChatRepository {
  final StompService stomp;
  final Map<String, StreamController<List<ChatModel>>> _controllers = {};

  ChatRepository({required this.stomp});

  @override
  Stream<List<ChatModel>> watchChats(String userId) {
    AppLogger.info('Начало watchChats');
    final topic = '/topic/get-chats/$userId';
    final controller = _controllers.putIfAbsent(
      topic,
      () => StreamController<List<ChatModel>>.broadcast(),
    );

    stomp.subscribe(topic, headers: {}).listen((frame) {
      if (frame.body == null) {
        AppLogger.info('frame.body watchChats null');
        return;
      }
      try {
        AppLogger.info('watchChats: raw frame.body => ${frame.body}');
        final decoded = jsonDecode(frame.body!);
        if (decoded is List) {
          final chats = decoded
              .map((e) => ChatModel.fromJson(Map<String, dynamic>.from(e)))
              .toList();
          if (!controller.isClosed) controller.add(chats);
        }
      } catch (e) {
        AppLogger.error('Ошибка при получении чатов', e);
      }
    });

    return controller.stream;
  }

  @override
  void requestChats(String jwtToken) {
    AppLogger.info('Попытка обновления чатов');
    stomp.send(
      destination: '/app/user-chats/',
      body: jsonEncode({}),
      headers: {'jwtToken': jwtToken},
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
