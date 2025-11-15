import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_messenger/core/constant/app_defaults.dart';
import 'package:tech_messenger/modules/editor/domain/model/update_avatar.dart';
import 'package:tech_messenger/modules/editor/domain/model/update_description.dart';
import 'package:tech_messenger/modules/editor/domain/model/update_name.dart';
import 'package:tech_messenger/modules/editor/domain/repository/editor_repository_interface.dart';
import 'package:tech_messenger/modules/error/error_model.dart';
import 'package:image_picker/image_picker.dart';

part 'editor_event.dart';
part 'editor_state.dart';

part 'editor_bloc.freezed.dart';

class EditorBloc extends Bloc<EditorEvent, EditorState> {
  final IEditorRepository _editorRepository;

  Future<String?> pickImageAndEncode() async {
    final ImagePicker picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return null;

    final bytes = await File(pickedFile.path).readAsBytes();
    final extension = pickedFile.path.split('.').last.toLowerCase();

    return 'data:image/$extension;base64,${base64Encode(bytes)}';
  }

  EditorBloc({required IEditorRepository editorRepository})
    : _editorRepository = editorRepository,
      super(EditorState.initial()) {
    on<NameChangedEvent>(_NameChangedEvent);
    on<DescriptionChangedEvent>(_DescriptionChangedEvent);
    on<AvatarChangedEvent>(_AvatarChangedEvent);
  }

  Future<void> _NameChangedEvent(
    NameChangedEvent event,
    Emitter<EditorState> emit,
  ) async {
    try {
      emit(EditorState.loading());

      final response = await _editorRepository.updateName(
        UpdateNameRequest(name: event.newName),
      );

      if (response.response.statusCode == 200) {
        emit(EditorState.success());
      } else {
        final error = ErrorModel.fromJson(response.response.data);
        emit(EditorState.error(error.message));
      }
    } catch (e) {
      emit(EditorState.error('Неизвестная ошибка'));
    } finally {
      await Future.delayed(Duration(seconds: AppDefaults.snackBarDuration * 2));
      emit(EditorState.initial());
    }
  }

  Future<void> _DescriptionChangedEvent(
    DescriptionChangedEvent event,
    Emitter<EditorState> emit,
  ) async {
    try {
      emit(EditorState.loading());

      final response = await _editorRepository.updateDescription(
        UpdateDescriptionRequest(description: event.newDescription),
      );

      if (response.response.statusCode == 200) {
        emit(EditorState.success());
      } else {
        final error = ErrorModel.fromJson(response.response.data);
        emit(EditorState.error(error.message));
      }
    } catch (e) {
      emit(EditorState.error('Неизвестная ошибка'));
    } finally {
      await Future.delayed(Duration(seconds: AppDefaults.snackBarDuration * 2));
      emit(EditorState.initial());
    }
  }

  Future<void> _AvatarChangedEvent(
    AvatarChangedEvent event,
    Emitter<EditorState> emit,
  ) async {
    try {
      emit(EditorState.loading());

      final response = await _editorRepository.updateAvatar(
        UpdateAvatarRequest(avatar: event.newAvatar),
      );

      if (response.response.statusCode == 200) {
        emit(EditorState.success());
      } else {
        final error = ErrorModel.fromJson(response.response.data);
        emit(EditorState.error(error.message));
      }
    } catch (e) {
      emit(EditorState.error('Неизвестная ошибка'));
    } finally {
      await Future.delayed(Duration(seconds: AppDefaults.snackBarDuration * 2));
      emit(EditorState.initial());
    }
  }
}
