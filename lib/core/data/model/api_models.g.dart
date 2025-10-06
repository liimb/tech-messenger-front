// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckNicknameResponseImpl _$$CheckNicknameResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CheckNicknameResponseImpl(exists: json['exists'] as bool);

Map<String, dynamic> _$$CheckNicknameResponseImplToJson(
  _$CheckNicknameResponseImpl instance,
) => <String, dynamic>{'exists': instance.exists};

_$RegisterResponseImpl _$$RegisterResponseImplFromJson(
  Map<String, dynamic> json,
) => _$RegisterResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String?,
);

Map<String, dynamic> _$$RegisterResponseImplToJson(
  _$RegisterResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
};
