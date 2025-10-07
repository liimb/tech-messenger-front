// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationRequestImpl _$$RegistrationRequestImplFromJson(
  Map<String, dynamic> json,
) => _$RegistrationRequestImpl(
  nickname: json['nickname'] as String,
  password: json['password'] as String,
  passwordRepeat: json['password_repeat'] as String,
);

Map<String, dynamic> _$$RegistrationRequestImplToJson(
  _$RegistrationRequestImpl instance,
) => <String, dynamic>{
  'nickname': instance.nickname,
  'password': instance.password,
  'password_repeat': instance.passwordRepeat,
};
