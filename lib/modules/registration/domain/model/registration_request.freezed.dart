// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RegistrationRequest _$RegistrationRequestFromJson(Map<String, dynamic> json) {
  return _RegistrationRequest.fromJson(json);
}

/// @nodoc
mixin _$RegistrationRequest {
  @JsonKey(name: 'nickname')
  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'password_repeat')
  String get passwordRepeat => throw _privateConstructorUsedError;

  /// Serializes this RegistrationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationRequestCopyWith<RegistrationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationRequestCopyWith<$Res> {
  factory $RegistrationRequestCopyWith(
    RegistrationRequest value,
    $Res Function(RegistrationRequest) then,
  ) = _$RegistrationRequestCopyWithImpl<$Res, RegistrationRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'nickname') String nickname,
    @JsonKey(name: 'password') String password,
    @JsonKey(name: 'password_repeat') String passwordRepeat,
  });
}

/// @nodoc
class _$RegistrationRequestCopyWithImpl<$Res, $Val extends RegistrationRequest>
    implements $RegistrationRequestCopyWith<$Res> {
  _$RegistrationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? password = null,
    Object? passwordRepeat = null,
  }) {
    return _then(
      _value.copyWith(
            nickname: null == nickname
                ? _value.nickname
                : nickname // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
            passwordRepeat: null == passwordRepeat
                ? _value.passwordRepeat
                : passwordRepeat // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RegistrationRequestImplCopyWith<$Res>
    implements $RegistrationRequestCopyWith<$Res> {
  factory _$$RegistrationRequestImplCopyWith(
    _$RegistrationRequestImpl value,
    $Res Function(_$RegistrationRequestImpl) then,
  ) = __$$RegistrationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'nickname') String nickname,
    @JsonKey(name: 'password') String password,
    @JsonKey(name: 'password_repeat') String passwordRepeat,
  });
}

/// @nodoc
class __$$RegistrationRequestImplCopyWithImpl<$Res>
    extends _$RegistrationRequestCopyWithImpl<$Res, _$RegistrationRequestImpl>
    implements _$$RegistrationRequestImplCopyWith<$Res> {
  __$$RegistrationRequestImplCopyWithImpl(
    _$RegistrationRequestImpl _value,
    $Res Function(_$RegistrationRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? password = null,
    Object? passwordRepeat = null,
  }) {
    return _then(
      _$RegistrationRequestImpl(
        nickname: null == nickname
            ? _value.nickname
            : nickname // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        passwordRepeat: null == passwordRepeat
            ? _value.passwordRepeat
            : passwordRepeat // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationRequestImpl implements _RegistrationRequest {
  const _$RegistrationRequestImpl({
    @JsonKey(name: 'nickname') required this.nickname,
    @JsonKey(name: 'password') required this.password,
    @JsonKey(name: 'password_repeat') required this.passwordRepeat,
  });

  factory _$RegistrationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistrationRequestImplFromJson(json);

  @override
  @JsonKey(name: 'nickname')
  final String nickname;
  @override
  @JsonKey(name: 'password')
  final String password;
  @override
  @JsonKey(name: 'password_repeat')
  final String passwordRepeat;

  @override
  String toString() {
    return 'RegistrationRequest(nickname: $nickname, password: $password, passwordRepeat: $passwordRepeat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationRequestImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordRepeat, passwordRepeat) ||
                other.passwordRepeat == passwordRepeat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nickname, password, passwordRepeat);

  /// Create a copy of RegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationRequestImplCopyWith<_$RegistrationRequestImpl> get copyWith =>
      __$$RegistrationRequestImplCopyWithImpl<_$RegistrationRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationRequestImplToJson(this);
  }
}

abstract class _RegistrationRequest implements RegistrationRequest {
  const factory _RegistrationRequest({
    @JsonKey(name: 'nickname') required final String nickname,
    @JsonKey(name: 'password') required final String password,
    @JsonKey(name: 'password_repeat') required final String passwordRepeat,
  }) = _$RegistrationRequestImpl;

  factory _RegistrationRequest.fromJson(Map<String, dynamic> json) =
      _$RegistrationRequestImpl.fromJson;

  @override
  @JsonKey(name: 'nickname')
  String get nickname;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(name: 'password_repeat')
  String get passwordRepeat;

  /// Create a copy of RegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationRequestImplCopyWith<_$RegistrationRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
