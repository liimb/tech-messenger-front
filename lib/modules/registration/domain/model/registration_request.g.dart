// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegistrationRequest _$RegistrationRequestFromJson(Map<String, dynamic> json) =>
    _RegistrationRequest(
      nickname: json['nickname'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
      passwordRepeat: json['password_repeat'] as String,
    );

Map<String, dynamic> _$RegistrationRequestToJson(
  _RegistrationRequest instance,
) => <String, dynamic>{
  'nickname': instance.nickname,
  'name': instance.name,
  'password': instance.password,
  'password_repeat': instance.passwordRepeat,
};
