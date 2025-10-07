// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc.dart';

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
  String get passwordRepeat => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String nickname,
      String password,
      String passwordRepeat,
    )
    submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nickname, String password, String passwordRepeat)?
    submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nickname, String password, String passwordRepeat)?
    submit,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitRegistrationEvent value) submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitRegistrationEvent value)? submit,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitRegistrationEvent value)? submit,
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
  $Res call({String nickname, String password, String passwordRepeat});
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
abstract class _$$SubmitRegistrationEventImplCopyWith<$Res>
    implements $RegistrationEventCopyWith<$Res> {
  factory _$$SubmitRegistrationEventImplCopyWith(
    _$SubmitRegistrationEventImpl value,
    $Res Function(_$SubmitRegistrationEventImpl) then,
  ) = __$$SubmitRegistrationEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname, String password, String passwordRepeat});
}

/// @nodoc
class __$$SubmitRegistrationEventImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$SubmitRegistrationEventImpl>
    implements _$$SubmitRegistrationEventImplCopyWith<$Res> {
  __$$SubmitRegistrationEventImplCopyWithImpl(
    _$SubmitRegistrationEventImpl _value,
    $Res Function(_$SubmitRegistrationEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? password = null,
    Object? passwordRepeat = null,
  }) {
    return _then(
      _$SubmitRegistrationEventImpl(
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

class _$SubmitRegistrationEventImpl implements SubmitRegistrationEvent {
  const _$SubmitRegistrationEventImpl({
    required this.nickname,
    required this.password,
    required this.passwordRepeat,
  });

  @override
  final String nickname;
  @override
  final String password;
  @override
  final String passwordRepeat;

  @override
  String toString() {
    return 'RegistrationEvent.submit(nickname: $nickname, password: $password, passwordRepeat: $passwordRepeat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitRegistrationEventImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordRepeat, passwordRepeat) ||
                other.passwordRepeat == passwordRepeat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, nickname, password, passwordRepeat);

  /// Create a copy of RegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitRegistrationEventImplCopyWith<_$SubmitRegistrationEventImpl>
  get copyWith =>
      __$$SubmitRegistrationEventImplCopyWithImpl<
        _$SubmitRegistrationEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String nickname,
      String password,
      String passwordRepeat,
    )
    submit,
  }) {
    return submit(nickname, password, passwordRepeat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nickname, String password, String passwordRepeat)?
    submit,
  }) {
    return submit?.call(nickname, password, passwordRepeat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nickname, String password, String passwordRepeat)?
    submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(nickname, password, passwordRepeat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitRegistrationEvent value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitRegistrationEvent value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitRegistrationEvent value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class SubmitRegistrationEvent implements RegistrationEvent {
  const factory SubmitRegistrationEvent({
    required final String nickname,
    required final String password,
    required final String passwordRepeat,
  }) = _$SubmitRegistrationEventImpl;

  @override
  String get nickname;
  @override
  String get password;
  @override
  String get passwordRepeat;

  /// Create a copy of RegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitRegistrationEventImplCopyWith<_$SubmitRegistrationEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitialState value) initial,
    required TResult Function(RegistrationLoadingState value) loading,
    required TResult Function(RegistrationSuccessState value) success,
    required TResult Function(RegistrationErrorState value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitialState value)? initial,
    TResult? Function(RegistrationLoadingState value)? loading,
    TResult? Function(RegistrationSuccessState value)? success,
    TResult? Function(RegistrationErrorState value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitialState value)? initial,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
    RegistrationState value,
    $Res Function(RegistrationState) then,
  ) = _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RegistrationInitialStateImplCopyWith<$Res> {
  factory _$$RegistrationInitialStateImplCopyWith(
    _$RegistrationInitialStateImpl value,
    $Res Function(_$RegistrationInitialStateImpl) then,
  ) = __$$RegistrationInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationInitialStateImplCopyWithImpl<$Res>
    extends
        _$RegistrationStateCopyWithImpl<$Res, _$RegistrationInitialStateImpl>
    implements _$$RegistrationInitialStateImplCopyWith<$Res> {
  __$$RegistrationInitialStateImplCopyWithImpl(
    _$RegistrationInitialStateImpl _value,
    $Res Function(_$RegistrationInitialStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegistrationInitialStateImpl implements RegistrationInitialState {
  const _$RegistrationInitialStateImpl();

  @override
  String toString() {
    return 'RegistrationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitialState value) initial,
    required TResult Function(RegistrationLoadingState value) loading,
    required TResult Function(RegistrationSuccessState value) success,
    required TResult Function(RegistrationErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitialState value)? initial,
    TResult? Function(RegistrationLoadingState value)? loading,
    TResult? Function(RegistrationSuccessState value)? success,
    TResult? Function(RegistrationErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitialState value)? initial,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RegistrationInitialState implements RegistrationState {
  const factory RegistrationInitialState() = _$RegistrationInitialStateImpl;
}

/// @nodoc
abstract class _$$RegistrationLoadingStateImplCopyWith<$Res> {
  factory _$$RegistrationLoadingStateImplCopyWith(
    _$RegistrationLoadingStateImpl value,
    $Res Function(_$RegistrationLoadingStateImpl) then,
  ) = __$$RegistrationLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationLoadingStateImplCopyWithImpl<$Res>
    extends
        _$RegistrationStateCopyWithImpl<$Res, _$RegistrationLoadingStateImpl>
    implements _$$RegistrationLoadingStateImplCopyWith<$Res> {
  __$$RegistrationLoadingStateImplCopyWithImpl(
    _$RegistrationLoadingStateImpl _value,
    $Res Function(_$RegistrationLoadingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegistrationLoadingStateImpl implements RegistrationLoadingState {
  const _$RegistrationLoadingStateImpl();

  @override
  String toString() {
    return 'RegistrationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitialState value) initial,
    required TResult Function(RegistrationLoadingState value) loading,
    required TResult Function(RegistrationSuccessState value) success,
    required TResult Function(RegistrationErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitialState value)? initial,
    TResult? Function(RegistrationLoadingState value)? loading,
    TResult? Function(RegistrationSuccessState value)? success,
    TResult? Function(RegistrationErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitialState value)? initial,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegistrationLoadingState implements RegistrationState {
  const factory RegistrationLoadingState() = _$RegistrationLoadingStateImpl;
}

/// @nodoc
abstract class _$$RegistrationSuccessStateImplCopyWith<$Res> {
  factory _$$RegistrationSuccessStateImplCopyWith(
    _$RegistrationSuccessStateImpl value,
    $Res Function(_$RegistrationSuccessStateImpl) then,
  ) = __$$RegistrationSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationSuccessStateImplCopyWithImpl<$Res>
    extends
        _$RegistrationStateCopyWithImpl<$Res, _$RegistrationSuccessStateImpl>
    implements _$$RegistrationSuccessStateImplCopyWith<$Res> {
  __$$RegistrationSuccessStateImplCopyWithImpl(
    _$RegistrationSuccessStateImpl _value,
    $Res Function(_$RegistrationSuccessStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegistrationSuccessStateImpl implements RegistrationSuccessState {
  const _$RegistrationSuccessStateImpl();

  @override
  String toString() {
    return 'RegistrationState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitialState value) initial,
    required TResult Function(RegistrationLoadingState value) loading,
    required TResult Function(RegistrationSuccessState value) success,
    required TResult Function(RegistrationErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitialState value)? initial,
    TResult? Function(RegistrationLoadingState value)? loading,
    TResult? Function(RegistrationSuccessState value)? success,
    TResult? Function(RegistrationErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitialState value)? initial,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RegistrationSuccessState implements RegistrationState {
  const factory RegistrationSuccessState() = _$RegistrationSuccessStateImpl;
}

/// @nodoc
abstract class _$$RegistrationErrorStateImplCopyWith<$Res> {
  factory _$$RegistrationErrorStateImplCopyWith(
    _$RegistrationErrorStateImpl value,
    $Res Function(_$RegistrationErrorStateImpl) then,
  ) = __$$RegistrationErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RegistrationErrorStateImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationErrorStateImpl>
    implements _$$RegistrationErrorStateImplCopyWith<$Res> {
  __$$RegistrationErrorStateImplCopyWithImpl(
    _$RegistrationErrorStateImpl _value,
    $Res Function(_$RegistrationErrorStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$RegistrationErrorStateImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RegistrationErrorStateImpl implements RegistrationErrorState {
  const _$RegistrationErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RegistrationState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationErrorStateImplCopyWith<_$RegistrationErrorStateImpl>
  get copyWith =>
      __$$RegistrationErrorStateImplCopyWithImpl<_$RegistrationErrorStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitialState value) initial,
    required TResult Function(RegistrationLoadingState value) loading,
    required TResult Function(RegistrationSuccessState value) success,
    required TResult Function(RegistrationErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitialState value)? initial,
    TResult? Function(RegistrationLoadingState value)? loading,
    TResult? Function(RegistrationSuccessState value)? success,
    TResult? Function(RegistrationErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitialState value)? initial,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegistrationErrorState implements RegistrationState {
  const factory RegistrationErrorState(final String message) =
      _$RegistrationErrorStateImpl;

  String get message;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationErrorStateImplCopyWith<_$RegistrationErrorStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
