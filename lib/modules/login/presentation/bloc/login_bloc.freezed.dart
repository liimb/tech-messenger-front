// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {

 String get nickname; String get password;
/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginEventCopyWith<LoginEvent> get copyWith => _$LoginEventCopyWithImpl<LoginEvent>(this as LoginEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,nickname,password);

@override
String toString() {
  return 'LoginEvent(nickname: $nickname, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginEventCopyWith<$Res>  {
  factory $LoginEventCopyWith(LoginEvent value, $Res Function(LoginEvent) _then) = _$LoginEventCopyWithImpl;
@useResult
$Res call({
 String nickname, String password
});




}
/// @nodoc
class _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._self, this._then);

  final LoginEvent _self;
  final $Res Function(LoginEvent) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nickname = null,Object? password = null,}) {
  return _then(_self.copyWith(
nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginTryEvent value)?  tryLogin,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginTryEvent() when tryLogin != null:
return tryLogin(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginTryEvent value)  tryLogin,}){
final _that = this;
switch (_that) {
case LoginTryEvent():
return tryLogin(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginTryEvent value)?  tryLogin,}){
final _that = this;
switch (_that) {
case LoginTryEvent() when tryLogin != null:
return tryLogin(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String nickname,  String password)?  tryLogin,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginTryEvent() when tryLogin != null:
return tryLogin(_that.nickname,_that.password);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String nickname,  String password)  tryLogin,}) {final _that = this;
switch (_that) {
case LoginTryEvent():
return tryLogin(_that.nickname,_that.password);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String nickname,  String password)?  tryLogin,}) {final _that = this;
switch (_that) {
case LoginTryEvent() when tryLogin != null:
return tryLogin(_that.nickname,_that.password);case _:
  return null;

}
}

}

/// @nodoc


class LoginTryEvent implements LoginEvent {
  const LoginTryEvent({required this.nickname, required this.password});
  

@override final  String nickname;
@override final  String password;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginTryEventCopyWith<LoginTryEvent> get copyWith => _$LoginTryEventCopyWithImpl<LoginTryEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginTryEvent&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,nickname,password);

@override
String toString() {
  return 'LoginEvent.tryLogin(nickname: $nickname, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginTryEventCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginTryEventCopyWith(LoginTryEvent value, $Res Function(LoginTryEvent) _then) = _$LoginTryEventCopyWithImpl;
@override @useResult
$Res call({
 String nickname, String password
});




}
/// @nodoc
class _$LoginTryEventCopyWithImpl<$Res>
    implements $LoginTryEventCopyWith<$Res> {
  _$LoginTryEventCopyWithImpl(this._self, this._then);

  final LoginTryEvent _self;
  final $Res Function(LoginTryEvent) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nickname = null,Object? password = null,}) {
  return _then(LoginTryEvent(
nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$LoginState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState()';
}


}

/// @nodoc
class $LoginStateCopyWith<$Res>  {
$LoginStateCopyWith(LoginState _, $Res Function(LoginState) __);
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginInitialState value)?  initial,TResult Function( LoginLoadingState value)?  loading,TResult Function( LoginSuccessState value)?  success,TResult Function( LoginFailureState value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginInitialState() when initial != null:
return initial(_that);case LoginLoadingState() when loading != null:
return loading(_that);case LoginSuccessState() when success != null:
return success(_that);case LoginFailureState() when failure != null:
return failure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginInitialState value)  initial,required TResult Function( LoginLoadingState value)  loading,required TResult Function( LoginSuccessState value)  success,required TResult Function( LoginFailureState value)  failure,}){
final _that = this;
switch (_that) {
case LoginInitialState():
return initial(_that);case LoginLoadingState():
return loading(_that);case LoginSuccessState():
return success(_that);case LoginFailureState():
return failure(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginInitialState value)?  initial,TResult? Function( LoginLoadingState value)?  loading,TResult? Function( LoginSuccessState value)?  success,TResult? Function( LoginFailureState value)?  failure,}){
final _that = this;
switch (_that) {
case LoginInitialState() when initial != null:
return initial(_that);case LoginLoadingState() when loading != null:
return loading(_that);case LoginSuccessState() when success != null:
return success(_that);case LoginFailureState() when failure != null:
return failure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( String msg)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginInitialState() when initial != null:
return initial();case LoginLoadingState() when loading != null:
return loading();case LoginSuccessState() when success != null:
return success();case LoginFailureState() when failure != null:
return failure(_that.msg);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( String msg)  failure,}) {final _that = this;
switch (_that) {
case LoginInitialState():
return initial();case LoginLoadingState():
return loading();case LoginSuccessState():
return success();case LoginFailureState():
return failure(_that.msg);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String msg)?  failure,}) {final _that = this;
switch (_that) {
case LoginInitialState() when initial != null:
return initial();case LoginLoadingState() when loading != null:
return loading();case LoginSuccessState() when success != null:
return success();case LoginFailureState() when failure != null:
return failure(_that.msg);case _:
  return null;

}
}

}

/// @nodoc


class LoginInitialState implements LoginState {
  const LoginInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.initial()';
}


}




/// @nodoc


class LoginLoadingState implements LoginState {
  const LoginLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.loading()';
}


}




/// @nodoc


class LoginSuccessState implements LoginState {
  const LoginSuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.success()';
}


}




/// @nodoc


class LoginFailureState implements LoginState {
  const LoginFailureState(this.msg);
  

 final  String msg;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginFailureStateCopyWith<LoginFailureState> get copyWith => _$LoginFailureStateCopyWithImpl<LoginFailureState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginFailureState&&(identical(other.msg, msg) || other.msg == msg));
}


@override
int get hashCode => Object.hash(runtimeType,msg);

@override
String toString() {
  return 'LoginState.failure(msg: $msg)';
}


}

/// @nodoc
abstract mixin class $LoginFailureStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginFailureStateCopyWith(LoginFailureState value, $Res Function(LoginFailureState) _then) = _$LoginFailureStateCopyWithImpl;
@useResult
$Res call({
 String msg
});




}
/// @nodoc
class _$LoginFailureStateCopyWithImpl<$Res>
    implements $LoginFailureStateCopyWith<$Res> {
  _$LoginFailureStateCopyWithImpl(this._self, this._then);

  final LoginFailureState _self;
  final $Res Function(LoginFailureState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? msg = null,}) {
  return _then(LoginFailureState(
null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
