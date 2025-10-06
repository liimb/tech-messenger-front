// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RegistrationEvent {
  String get nickname => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get repeatPassword => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String nickname,
      String password,
      String repeatPassword,
    )
    submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nickname, String password, String repeatPassword)?
    submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nickname, String password, String repeatPassword)?
    submit,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitRegistration value) submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitRegistration value)? submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitRegistration value)? submit,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationEventCopyWith<RegistrationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
    RegistrationEvent value,
    $Res Function(RegistrationEvent) then,
  ) = _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
  @useResult
  $Res call({String nickname, String password, String repeatPassword});
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? password = null,
    Object? repeatPassword = null,
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
            repeatPassword: null == repeatPassword
                ? _value.repeatPassword
                : repeatPassword // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubmitRegistrationImplCopyWith<$Res>
    implements $RegistrationEventCopyWith<$Res> {
  factory _$$SubmitRegistrationImplCopyWith(
    _$SubmitRegistrationImpl value,
    $Res Function(_$SubmitRegistrationImpl) then,
  ) = __$$SubmitRegistrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname, String password, String repeatPassword});
}

/// @nodoc
class __$$SubmitRegistrationImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$SubmitRegistrationImpl>
    implements _$$SubmitRegistrationImplCopyWith<$Res> {
  __$$SubmitRegistrationImplCopyWithImpl(
    _$SubmitRegistrationImpl _value,
    $Res Function(_$SubmitRegistrationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? password = null,
    Object? repeatPassword = null,
  }) {
    return _then(
      _$SubmitRegistrationImpl(
        nickname: null == nickname
            ? _value.nickname
            : nickname // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        repeatPassword: null == repeatPassword
            ? _value.repeatPassword
            : repeatPassword // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SubmitRegistrationImpl implements SubmitRegistration {
  const _$SubmitRegistrationImpl({
    required this.nickname,
    required this.password,
    required this.repeatPassword,
  });

  @override
  final String nickname;
  @override
  final String password;
  @override
  final String repeatPassword;

  @override
  String toString() {
    return 'RegistrationEvent.submit(nickname: $nickname, password: $password, repeatPassword: $repeatPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitRegistrationImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.repeatPassword, repeatPassword) ||
                other.repeatPassword == repeatPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, nickname, password, repeatPassword);

  /// Create a copy of RegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitRegistrationImplCopyWith<_$SubmitRegistrationImpl> get copyWith =>
      __$$SubmitRegistrationImplCopyWithImpl<_$SubmitRegistrationImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String nickname,
      String password,
      String repeatPassword,
    )
    submit,
  }) {
    return submit(nickname, password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nickname, String password, String repeatPassword)?
    submit,
  }) {
    return submit?.call(nickname, password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nickname, String password, String repeatPassword)?
    submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(nickname, password, repeatPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitRegistration value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitRegistration value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitRegistration value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class SubmitRegistration implements RegistrationEvent {
  const factory SubmitRegistration({
    required final String nickname,
    required final String password,
    required final String repeatPassword,
  }) = _$SubmitRegistrationImpl;

  @override
  String get nickname;
  @override
  String get password;
  @override
  String get repeatPassword;

  /// Create a copy of RegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitRegistrationImplCopyWith<_$SubmitRegistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
