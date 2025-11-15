import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';
import 'package:path_provider/path_provider.dart';

part 'avatar_event.dart';
part 'avatar_state.dart';
part 'avatar_bloc.freezed.dart';

class AvatarBloc extends Bloc<AvatarEvent, AvatarState> {
  final UserModel _userData;

  AvatarBloc({required UserModel userData})
    : _userData = userData,
      super(AvatarState(picture: null)) {
    on<CreateEvent>((event, emit) async {
      if (_userData.avatar == null) {
        emit(const AvatarState(picture: null));
      } else {
        final cleanBase64 = _userData.avatar!.split(',').last;
        final bytes = base64Decode(cleanBase64);
        final extension = _userData.avatar!.substring(
          _userData.avatar!.indexOf('/') + 1,
          _userData.avatar!.indexOf(';'),
        );
        print(extension);
        final dir = await getApplicationDocumentsDirectory();
        final path = '${dir.path}/${userData.nickname}.$extension';

        final file = File(path);
        await file.create(recursive: true);
        await file.writeAsBytes(bytes);
        emit(AvatarState(picture: path));
      }
    });
    add(CreateEvent());
  }
}
