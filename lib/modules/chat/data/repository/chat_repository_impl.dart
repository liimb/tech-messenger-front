import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:retrofit/dio.dart';
import 'package:tech_messenger/app/app_logger.dart';
import 'package:tech_messenger/core/network/stomp_service.dart';
import 'package:tech_messenger/modules/chat/data/datasource/impl/chat_datasource_impl.dart';
import 'package:tech_messenger/modules/chat/data/datasource/interface/chat_datasource_interface.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat/chat_model.dart';
import 'package:tech_messenger/modules/chat/domain/model/create/chat_create_model.dart';
import 'package:tech_messenger/modules/chat/domain/repository/chat_repository_interface.dart';

class ChatRepository implements IChatRepository {
  final StompService stomp;
  final IChatDatasource _chatDatasource;
  final Map<String, StreamController<List<ChatModel>>> _controllers = {};

  ChatRepository({required this.stomp, required ChatDatasource chatDatasource})
    : _chatDatasource = chatDatasource;

  @override
  Stream<List<ChatModel>> watchChats(String userId) {
    AppLogger.info('Начало watchChats');
    final topic = '/topic/get-chats/$userId';
    final controller = _controllers.putIfAbsent(
      topic,
      () => StreamController<List<ChatModel>>.broadcast(),
    );

    stomp.subscribe(topic, headers: {}).listen((frame) async {
      if (frame.body == null) {
        AppLogger.info('frame.body watchChats null');
        return;
      }
      try {
        AppLogger.info('watchChats: raw frame.body => ${frame.body}');
        final decoded = jsonDecode(frame.body!);
        if (decoded is List) {
          AppLogger.info('Попытка декодирования чатов');
          // Парсинг в фоновом потоке для предотвращения зависания UI
          final chats = await compute(
            _parseChats,
            decoded.map((e) => Map<String, dynamic>.from(e as Map)).toList(),
          );
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

  @override
  Future<HttpResponse> createChat(ChatCreateModel chatCreate) {
    return _chatDatasource.createChat(chatCreate);
  }
}

// Функция для парсинга чатов в фоновом потоке
List<ChatModel> _parseChats(List<Map<String, dynamic>> decoded) {
  return decoded
      .map((e) => ChatModel.fromJson(Map<String, dynamic>.from(e)))
      .toList();
}
