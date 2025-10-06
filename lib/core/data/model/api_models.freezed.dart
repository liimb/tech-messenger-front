// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CheckNicknameResponse _$CheckNicknameResponseFromJson(
  Map<String, dynamic> json,
) {
  return _CheckNicknameResponse.fromJson(json);
}

/// @nodoc
mixin _$CheckNicknameResponse {
  bool get exists => throw _privateConstructorUsedError;

  /// Serializes this CheckNicknameResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckNicknameResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckNicknameResponseCopyWith<CheckNicknameResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckNicknameResponseCopyWith<$Res> {
  factory $CheckNicknameResponseCopyWith(
    CheckNicknameResponse value,
    $Res Function(CheckNicknameResponse) then,
  ) = _$CheckNicknameResponseCopyWithImpl<$Res, CheckNicknameResponse>;
  @useResult
  $Res call({bool exists});
}

/// @nodoc
class _$CheckNicknameResponseCopyWithImpl<
  $Res,
  $Val extends CheckNicknameResponse
>
    implements $CheckNicknameResponseCopyWith<$Res> {
  _$CheckNicknameResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckNicknameResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? exists = null}) {
    return _then(
      _value.copyWith(
            exists: null == exists
                ? _value.exists
                : exists // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CheckNicknameResponseImplCopyWith<$Res>
    implements $CheckNicknameResponseCopyWith<$Res> {
  factory _$$CheckNicknameResponseImplCopyWith(
    _$CheckNicknameResponseImpl value,
    $Res Function(_$CheckNicknameResponseImpl) then,
  ) = __$$CheckNicknameResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool exists});
}

/// @nodoc
class __$$CheckNicknameResponseImplCopyWithImpl<$Res>
    extends
        _$CheckNicknameResponseCopyWithImpl<$Res, _$CheckNicknameResponseImpl>
    implements _$$CheckNicknameResponseImplCopyWith<$Res> {
  __$$CheckNicknameResponseImplCopyWithImpl(
    _$CheckNicknameResponseImpl _value,
    $Res Function(_$CheckNicknameResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CheckNicknameResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? exists = null}) {
    return _then(
      _$CheckNicknameResponseImpl(
        exists: null == exists
            ? _value.exists
            : exists // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckNicknameResponseImpl implements _CheckNicknameResponse {
  const _$CheckNicknameResponseImpl({required this.exists});

  factory _$CheckNicknameResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckNicknameResponseImplFromJson(json);

  @override
  final bool exists;

  @override
  String toString() {
    return 'CheckNicknameResponse(exists: $exists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckNicknameResponseImpl &&
            (identical(other.exists, exists) || other.exists == exists));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, exists);

  /// Create a copy of CheckNicknameResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckNicknameResponseImplCopyWith<_$CheckNicknameResponseImpl>
  get copyWith =>
      __$$CheckNicknameResponseImplCopyWithImpl<_$CheckNicknameResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckNicknameResponseImplToJson(this);
  }
}

abstract class _CheckNicknameResponse implements CheckNicknameResponse {
  const factory _CheckNicknameResponse({required final bool exists}) =
      _$CheckNicknameResponseImpl;

  factory _CheckNicknameResponse.fromJson(Map<String, dynamic> json) =
      _$CheckNicknameResponseImpl.fromJson;

  @override
  bool get exists;

  /// Create a copy of CheckNicknameResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckNicknameResponseImplCopyWith<_$CheckNicknameResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) {
  return _RegisterResponse.fromJson(json);
}

/// @nodoc
mixin _$RegisterResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this RegisterResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterResponseCopyWith<RegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterResponseCopyWith<$Res> {
  factory $RegisterResponseCopyWith(
    RegisterResponse value,
    $Res Function(RegisterResponse) then,
  ) = _$RegisterResponseCopyWithImpl<$Res, RegisterResponse>;
  @useResult
  $Res call({bool success, String? message});
}

/// @nodoc
class _$RegisterResponseCopyWithImpl<$Res, $Val extends RegisterResponse>
    implements $RegisterResponseCopyWith<$Res> {
  _$RegisterResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RegisterResponseImplCopyWith<$Res>
    implements $RegisterResponseCopyWith<$Res> {
  factory _$$RegisterResponseImplCopyWith(
    _$RegisterResponseImpl value,
    $Res Function(_$RegisterResponseImpl) then,
  ) = __$$RegisterResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message});
}

/// @nodoc
class __$$RegisterResponseImplCopyWithImpl<$Res>
    extends _$RegisterResponseCopyWithImpl<$Res, _$RegisterResponseImpl>
    implements _$$RegisterResponseImplCopyWith<$Res> {
  __$$RegisterResponseImplCopyWithImpl(
    _$RegisterResponseImpl _value,
    $Res Function(_$RegisterResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? message = freezed}) {
    return _then(
      _$RegisterResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterResponseImpl implements _RegisterResponse {
  const _$RegisterResponseImpl({required this.success, this.message});

  factory _$RegisterResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String? message;

  @override
  String toString() {
    return 'RegisterResponse(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  /// Create a copy of RegisterResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterResponseImplCopyWith<_$RegisterResponseImpl> get copyWith =>
      __$$RegisterResponseImplCopyWithImpl<_$RegisterResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterResponseImplToJson(this);
  }
}

abstract class _RegisterResponse implements RegisterResponse {
  const factory _RegisterResponse({
    required final bool success,
    final String? message,
  }) = _$RegisterResponseImpl;

  factory _RegisterResponse.fromJson(Map<String, dynamic> json) =
      _$RegisterResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;

  /// Create a copy of RegisterResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterResponseImplCopyWith<_$RegisterResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
