// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RegistrationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) nicknameExistsError,
    required TResult Function(String message) passwordMismatchError,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? nicknameExistsError,
    TResult? Function(String message)? passwordMismatchError,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? nicknameExistsError,
    TResult Function(String message)? passwordMismatchError,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitial value) initial,
    required TResult Function(RegistrationLoading value) loading,
    required TResult Function(NicknameExistsError value) nicknameExistsError,
    required TResult Function(PasswordMismatchError value)
    passwordMismatchError,
    required TResult Function(RegistrationSuccess value) success,
    required TResult Function(RegistrationError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitial value)? initial,
    TResult? Function(RegistrationLoading value)? loading,
    TResult? Function(NicknameExistsError value)? nicknameExistsError,
    TResult? Function(PasswordMismatchError value)? passwordMismatchError,
    TResult? Function(RegistrationSuccess value)? success,
    TResult? Function(RegistrationError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitial value)? initial,
    TResult Function(RegistrationLoading value)? loading,
    TResult Function(NicknameExistsError value)? nicknameExistsError,
    TResult Function(PasswordMismatchError value)? passwordMismatchError,
    TResult Function(RegistrationSuccess value)? success,
    TResult Function(RegistrationError value)? error,
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
abstract class _$$RegistrationInitialImplCopyWith<$Res> {
  factory _$$RegistrationInitialImplCopyWith(
    _$RegistrationInitialImpl value,
    $Res Function(_$RegistrationInitialImpl) then,
  ) = __$$RegistrationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationInitialImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationInitialImpl>
    implements _$$RegistrationInitialImplCopyWith<$Res> {
  __$$RegistrationInitialImplCopyWithImpl(
    _$RegistrationInitialImpl _value,
    $Res Function(_$RegistrationInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegistrationInitialImpl implements RegistrationInitial {
  const _$RegistrationInitialImpl();

  @override
  String toString() {
    return 'RegistrationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) nicknameExistsError,
    required TResult Function(String message) passwordMismatchError,
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
    TResult? Function(String message)? nicknameExistsError,
    TResult? Function(String message)? passwordMismatchError,
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
    TResult Function(String message)? nicknameExistsError,
    TResult Function(String message)? passwordMismatchError,
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
    required TResult Function(RegistrationInitial value) initial,
    required TResult Function(RegistrationLoading value) loading,
    required TResult Function(NicknameExistsError value) nicknameExistsError,
    required TResult Function(PasswordMismatchError value)
    passwordMismatchError,
    required TResult Function(RegistrationSuccess value) success,
    required TResult Function(RegistrationError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitial value)? initial,
    TResult? Function(RegistrationLoading value)? loading,
    TResult? Function(NicknameExistsError value)? nicknameExistsError,
    TResult? Function(PasswordMismatchError value)? passwordMismatchError,
    TResult? Function(RegistrationSuccess value)? success,
    TResult? Function(RegistrationError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitial value)? initial,
    TResult Function(RegistrationLoading value)? loading,
    TResult Function(NicknameExistsError value)? nicknameExistsError,
    TResult Function(PasswordMismatchError value)? passwordMismatchError,
    TResult Function(RegistrationSuccess value)? success,
    TResult Function(RegistrationError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RegistrationInitial implements RegistrationState {
  const factory RegistrationInitial() = _$RegistrationInitialImpl;
}

/// @nodoc
abstract class _$$RegistrationLoadingImplCopyWith<$Res> {
  factory _$$RegistrationLoadingImplCopyWith(
    _$RegistrationLoadingImpl value,
    $Res Function(_$RegistrationLoadingImpl) then,
  ) = __$$RegistrationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationLoadingImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationLoadingImpl>
    implements _$$RegistrationLoadingImplCopyWith<$Res> {
  __$$RegistrationLoadingImplCopyWithImpl(
    _$RegistrationLoadingImpl _value,
    $Res Function(_$RegistrationLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegistrationLoadingImpl implements RegistrationLoading {
  const _$RegistrationLoadingImpl();

  @override
  String toString() {
    return 'RegistrationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) nicknameExistsError,
    required TResult Function(String message) passwordMismatchError,
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
    TResult? Function(String message)? nicknameExistsError,
    TResult? Function(String message)? passwordMismatchError,
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
    TResult Function(String message)? nicknameExistsError,
    TResult Function(String message)? passwordMismatchError,
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
    required TResult Function(RegistrationInitial value) initial,
    required TResult Function(RegistrationLoading value) loading,
    required TResult Function(NicknameExistsError value) nicknameExistsError,
    required TResult Function(PasswordMismatchError value)
    passwordMismatchError,
    required TResult Function(RegistrationSuccess value) success,
    required TResult Function(RegistrationError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitial value)? initial,
    TResult? Function(RegistrationLoading value)? loading,
    TResult? Function(NicknameExistsError value)? nicknameExistsError,
    TResult? Function(PasswordMismatchError value)? passwordMismatchError,
    TResult? Function(RegistrationSuccess value)? success,
    TResult? Function(RegistrationError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitial value)? initial,
    TResult Function(RegistrationLoading value)? loading,
    TResult Function(NicknameExistsError value)? nicknameExistsError,
    TResult Function(PasswordMismatchError value)? passwordMismatchError,
    TResult Function(RegistrationSuccess value)? success,
    TResult Function(RegistrationError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegistrationLoading implements RegistrationState {
  const factory RegistrationLoading() = _$RegistrationLoadingImpl;
}

/// @nodoc
abstract class _$$NicknameExistsErrorImplCopyWith<$Res> {
  factory _$$NicknameExistsErrorImplCopyWith(
    _$NicknameExistsErrorImpl value,
    $Res Function(_$NicknameExistsErrorImpl) then,
  ) = __$$NicknameExistsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NicknameExistsErrorImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$NicknameExistsErrorImpl>
    implements _$$NicknameExistsErrorImplCopyWith<$Res> {
  __$$NicknameExistsErrorImplCopyWithImpl(
    _$NicknameExistsErrorImpl _value,
    $Res Function(_$NicknameExistsErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$NicknameExistsErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$NicknameExistsErrorImpl implements NicknameExistsError {
  const _$NicknameExistsErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RegistrationState.nicknameExistsError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NicknameExistsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NicknameExistsErrorImplCopyWith<_$NicknameExistsErrorImpl> get copyWith =>
      __$$NicknameExistsErrorImplCopyWithImpl<_$NicknameExistsErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) nicknameExistsError,
    required TResult Function(String message) passwordMismatchError,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return nicknameExistsError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? nicknameExistsError,
    TResult? Function(String message)? passwordMismatchError,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return nicknameExistsError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? nicknameExistsError,
    TResult Function(String message)? passwordMismatchError,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (nicknameExistsError != null) {
      return nicknameExistsError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitial value) initial,
    required TResult Function(RegistrationLoading value) loading,
    required TResult Function(NicknameExistsError value) nicknameExistsError,
    required TResult Function(PasswordMismatchError value)
    passwordMismatchError,
    required TResult Function(RegistrationSuccess value) success,
    required TResult Function(RegistrationError value) error,
  }) {
    return nicknameExistsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitial value)? initial,
    TResult? Function(RegistrationLoading value)? loading,
    TResult? Function(NicknameExistsError value)? nicknameExistsError,
    TResult? Function(PasswordMismatchError value)? passwordMismatchError,
    TResult? Function(RegistrationSuccess value)? success,
    TResult? Function(RegistrationError value)? error,
  }) {
    return nicknameExistsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitial value)? initial,
    TResult Function(RegistrationLoading value)? loading,
    TResult Function(NicknameExistsError value)? nicknameExistsError,
    TResult Function(PasswordMismatchError value)? passwordMismatchError,
    TResult Function(RegistrationSuccess value)? success,
    TResult Function(RegistrationError value)? error,
    required TResult orElse(),
  }) {
    if (nicknameExistsError != null) {
      return nicknameExistsError(this);
    }
    return orElse();
  }
}

abstract class NicknameExistsError implements RegistrationState {
  const factory NicknameExistsError(final String message) =
      _$NicknameExistsErrorImpl;

  String get message;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NicknameExistsErrorImplCopyWith<_$NicknameExistsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordMismatchErrorImplCopyWith<$Res> {
  factory _$$PasswordMismatchErrorImplCopyWith(
    _$PasswordMismatchErrorImpl value,
    $Res Function(_$PasswordMismatchErrorImpl) then,
  ) = __$$PasswordMismatchErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PasswordMismatchErrorImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$PasswordMismatchErrorImpl>
    implements _$$PasswordMismatchErrorImplCopyWith<$Res> {
  __$$PasswordMismatchErrorImplCopyWithImpl(
    _$PasswordMismatchErrorImpl _value,
    $Res Function(_$PasswordMismatchErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$PasswordMismatchErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PasswordMismatchErrorImpl implements PasswordMismatchError {
  const _$PasswordMismatchErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RegistrationState.passwordMismatchError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordMismatchErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordMismatchErrorImplCopyWith<_$PasswordMismatchErrorImpl>
  get copyWith =>
      __$$PasswordMismatchErrorImplCopyWithImpl<_$PasswordMismatchErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) nicknameExistsError,
    required TResult Function(String message) passwordMismatchError,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return passwordMismatchError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? nicknameExistsError,
    TResult? Function(String message)? passwordMismatchError,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return passwordMismatchError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? nicknameExistsError,
    TResult Function(String message)? passwordMismatchError,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (passwordMismatchError != null) {
      return passwordMismatchError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitial value) initial,
    required TResult Function(RegistrationLoading value) loading,
    required TResult Function(NicknameExistsError value) nicknameExistsError,
    required TResult Function(PasswordMismatchError value)
    passwordMismatchError,
    required TResult Function(RegistrationSuccess value) success,
    required TResult Function(RegistrationError value) error,
  }) {
    return passwordMismatchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitial value)? initial,
    TResult? Function(RegistrationLoading value)? loading,
    TResult? Function(NicknameExistsError value)? nicknameExistsError,
    TResult? Function(PasswordMismatchError value)? passwordMismatchError,
    TResult? Function(RegistrationSuccess value)? success,
    TResult? Function(RegistrationError value)? error,
  }) {
    return passwordMismatchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitial value)? initial,
    TResult Function(RegistrationLoading value)? loading,
    TResult Function(NicknameExistsError value)? nicknameExistsError,
    TResult Function(PasswordMismatchError value)? passwordMismatchError,
    TResult Function(RegistrationSuccess value)? success,
    TResult Function(RegistrationError value)? error,
    required TResult orElse(),
  }) {
    if (passwordMismatchError != null) {
      return passwordMismatchError(this);
    }
    return orElse();
  }
}

abstract class PasswordMismatchError implements RegistrationState {
  const factory PasswordMismatchError(final String message) =
      _$PasswordMismatchErrorImpl;

  String get message;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordMismatchErrorImplCopyWith<_$PasswordMismatchErrorImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistrationSuccessImplCopyWith<$Res> {
  factory _$$RegistrationSuccessImplCopyWith(
    _$RegistrationSuccessImpl value,
    $Res Function(_$RegistrationSuccessImpl) then,
  ) = __$$RegistrationSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationSuccessImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationSuccessImpl>
    implements _$$RegistrationSuccessImplCopyWith<$Res> {
  __$$RegistrationSuccessImplCopyWithImpl(
    _$RegistrationSuccessImpl _value,
    $Res Function(_$RegistrationSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegistrationSuccessImpl implements RegistrationSuccess {
  const _$RegistrationSuccessImpl();

  @override
  String toString() {
    return 'RegistrationState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) nicknameExistsError,
    required TResult Function(String message) passwordMismatchError,
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
    TResult? Function(String message)? nicknameExistsError,
    TResult? Function(String message)? passwordMismatchError,
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
    TResult Function(String message)? nicknameExistsError,
    TResult Function(String message)? passwordMismatchError,
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
    required TResult Function(RegistrationInitial value) initial,
    required TResult Function(RegistrationLoading value) loading,
    required TResult Function(NicknameExistsError value) nicknameExistsError,
    required TResult Function(PasswordMismatchError value)
    passwordMismatchError,
    required TResult Function(RegistrationSuccess value) success,
    required TResult Function(RegistrationError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitial value)? initial,
    TResult? Function(RegistrationLoading value)? loading,
    TResult? Function(NicknameExistsError value)? nicknameExistsError,
    TResult? Function(PasswordMismatchError value)? passwordMismatchError,
    TResult? Function(RegistrationSuccess value)? success,
    TResult? Function(RegistrationError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitial value)? initial,
    TResult Function(RegistrationLoading value)? loading,
    TResult Function(NicknameExistsError value)? nicknameExistsError,
    TResult Function(PasswordMismatchError value)? passwordMismatchError,
    TResult Function(RegistrationSuccess value)? success,
    TResult Function(RegistrationError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RegistrationSuccess implements RegistrationState {
  const factory RegistrationSuccess() = _$RegistrationSuccessImpl;
}

/// @nodoc
abstract class _$$RegistrationErrorImplCopyWith<$Res> {
  factory _$$RegistrationErrorImplCopyWith(
    _$RegistrationErrorImpl value,
    $Res Function(_$RegistrationErrorImpl) then,
  ) = __$$RegistrationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RegistrationErrorImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationErrorImpl>
    implements _$$RegistrationErrorImplCopyWith<$Res> {
  __$$RegistrationErrorImplCopyWithImpl(
    _$RegistrationErrorImpl _value,
    $Res Function(_$RegistrationErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$RegistrationErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RegistrationErrorImpl implements RegistrationError {
  const _$RegistrationErrorImpl(this.message);

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
            other is _$RegistrationErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationErrorImplCopyWith<_$RegistrationErrorImpl> get copyWith =>
      __$$RegistrationErrorImplCopyWithImpl<_$RegistrationErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) nicknameExistsError,
    required TResult Function(String message) passwordMismatchError,
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
    TResult? Function(String message)? nicknameExistsError,
    TResult? Function(String message)? passwordMismatchError,
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
    TResult Function(String message)? nicknameExistsError,
    TResult Function(String message)? passwordMismatchError,
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
    required TResult Function(RegistrationInitial value) initial,
    required TResult Function(RegistrationLoading value) loading,
    required TResult Function(NicknameExistsError value) nicknameExistsError,
    required TResult Function(PasswordMismatchError value)
    passwordMismatchError,
    required TResult Function(RegistrationSuccess value) success,
    required TResult Function(RegistrationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitial value)? initial,
    TResult? Function(RegistrationLoading value)? loading,
    TResult? Function(NicknameExistsError value)? nicknameExistsError,
    TResult? Function(PasswordMismatchError value)? passwordMismatchError,
    TResult? Function(RegistrationSuccess value)? success,
    TResult? Function(RegistrationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitial value)? initial,
    TResult Function(RegistrationLoading value)? loading,
    TResult Function(NicknameExistsError value)? nicknameExistsError,
    TResult Function(PasswordMismatchError value)? passwordMismatchError,
    TResult Function(RegistrationSuccess value)? success,
    TResult Function(RegistrationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegistrationError implements RegistrationState {
  const factory RegistrationError(final String message) =
      _$RegistrationErrorImpl;

  String get message;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationErrorImplCopyWith<_$RegistrationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
