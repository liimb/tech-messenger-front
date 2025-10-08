// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegistrationEvent {

 String get nickname; String get password; String get passwordRepeat;
/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegistrationEventCopyWith<RegistrationEvent> get copyWith => _$RegistrationEventCopyWithImpl<RegistrationEvent>(this as RegistrationEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationEvent&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordRepeat, passwordRepeat) || other.passwordRepeat == passwordRepeat));
}


@override
int get hashCode => Object.hash(runtimeType,nickname,password,passwordRepeat);

@override
String toString() {
  return 'RegistrationEvent(nickname: $nickname, password: $password, passwordRepeat: $passwordRepeat)';
}


}

/// @nodoc
abstract mixin class $RegistrationEventCopyWith<$Res>  {
  factory $RegistrationEventCopyWith(RegistrationEvent value, $Res Function(RegistrationEvent) _then) = _$RegistrationEventCopyWithImpl;
@useResult
$Res call({
 String nickname, String password, String passwordRepeat
});




}
/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._self, this._then);

  final RegistrationEvent _self;
  final $Res Function(RegistrationEvent) _then;

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nickname = null,Object? password = null,Object? passwordRepeat = null,}) {
  return _then(_self.copyWith(
nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordRepeat: null == passwordRepeat ? _self.passwordRepeat : passwordRepeat // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RegistrationEvent].
extension RegistrationEventPatterns on RegistrationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SubmitRegistrationEvent value)?  submit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SubmitRegistrationEvent() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SubmitRegistrationEvent value)  submit,}){
final _that = this;
switch (_that) {
case SubmitRegistrationEvent():
return submit(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SubmitRegistrationEvent value)?  submit,}){
final _that = this;
switch (_that) {
case SubmitRegistrationEvent() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String nickname,  String password,  String passwordRepeat)?  submit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SubmitRegistrationEvent() when submit != null:
return submit(_that.nickname,_that.password,_that.passwordRepeat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String nickname,  String password,  String passwordRepeat)  submit,}) {final _that = this;
switch (_that) {
case SubmitRegistrationEvent():
return submit(_that.nickname,_that.password,_that.passwordRepeat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String nickname,  String password,  String passwordRepeat)?  submit,}) {final _that = this;
switch (_that) {
case SubmitRegistrationEvent() when submit != null:
return submit(_that.nickname,_that.password,_that.passwordRepeat);case _:
  return null;

}
}

}

/// @nodoc


class SubmitRegistrationEvent implements RegistrationEvent {
  const SubmitRegistrationEvent({required this.nickname, required this.password, required this.passwordRepeat});
  

@override final  String nickname;
@override final  String password;
@override final  String passwordRepeat;

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitRegistrationEventCopyWith<SubmitRegistrationEvent> get copyWith => _$SubmitRegistrationEventCopyWithImpl<SubmitRegistrationEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitRegistrationEvent&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordRepeat, passwordRepeat) || other.passwordRepeat == passwordRepeat));
}


@override
int get hashCode => Object.hash(runtimeType,nickname,password,passwordRepeat);

@override
String toString() {
  return 'RegistrationEvent.submit(nickname: $nickname, password: $password, passwordRepeat: $passwordRepeat)';
}


}

/// @nodoc
abstract mixin class $SubmitRegistrationEventCopyWith<$Res> implements $RegistrationEventCopyWith<$Res> {
  factory $SubmitRegistrationEventCopyWith(SubmitRegistrationEvent value, $Res Function(SubmitRegistrationEvent) _then) = _$SubmitRegistrationEventCopyWithImpl;
@override @useResult
$Res call({
 String nickname, String password, String passwordRepeat
});




}
/// @nodoc
class _$SubmitRegistrationEventCopyWithImpl<$Res>
    implements $SubmitRegistrationEventCopyWith<$Res> {
  _$SubmitRegistrationEventCopyWithImpl(this._self, this._then);

  final SubmitRegistrationEvent _self;
  final $Res Function(SubmitRegistrationEvent) _then;

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nickname = null,Object? password = null,Object? passwordRepeat = null,}) {
  return _then(SubmitRegistrationEvent(
nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordRepeat: null == passwordRepeat ? _self.passwordRepeat : passwordRepeat // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$RegistrationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegistrationState()';
}


}

/// @nodoc
class $RegistrationStateCopyWith<$Res>  {
$RegistrationStateCopyWith(RegistrationState _, $Res Function(RegistrationState) __);
}


/// Adds pattern-matching-related methods to [RegistrationState].
extension RegistrationStatePatterns on RegistrationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RegistrationInitialState value)?  initial,TResult Function( RegistrationLoadingState value)?  loading,TResult Function( RegistrationSuccessState value)?  success,TResult Function( RegistrationErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RegistrationInitialState() when initial != null:
return initial(_that);case RegistrationLoadingState() when loading != null:
return loading(_that);case RegistrationSuccessState() when success != null:
return success(_that);case RegistrationErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RegistrationInitialState value)  initial,required TResult Function( RegistrationLoadingState value)  loading,required TResult Function( RegistrationSuccessState value)  success,required TResult Function( RegistrationErrorState value)  error,}){
final _that = this;
switch (_that) {
case RegistrationInitialState():
return initial(_that);case RegistrationLoadingState():
return loading(_that);case RegistrationSuccessState():
return success(_that);case RegistrationErrorState():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RegistrationInitialState value)?  initial,TResult? Function( RegistrationLoadingState value)?  loading,TResult? Function( RegistrationSuccessState value)?  success,TResult? Function( RegistrationErrorState value)?  error,}){
final _that = this;
switch (_that) {
case RegistrationInitialState() when initial != null:
return initial(_that);case RegistrationLoadingState() when loading != null:
return loading(_that);case RegistrationSuccessState() when success != null:
return success(_that);case RegistrationErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RegistrationInitialState() when initial != null:
return initial();case RegistrationLoadingState() when loading != null:
return loading();case RegistrationSuccessState() when success != null:
return success();case RegistrationErrorState() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case RegistrationInitialState():
return initial();case RegistrationLoadingState():
return loading();case RegistrationSuccessState():
return success();case RegistrationErrorState():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case RegistrationInitialState() when initial != null:
return initial();case RegistrationLoadingState() when loading != null:
return loading();case RegistrationSuccessState() when success != null:
return success();case RegistrationErrorState() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class RegistrationInitialState implements RegistrationState {
  const RegistrationInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegistrationState.initial()';
}


}




/// @nodoc


class RegistrationLoadingState implements RegistrationState {
  const RegistrationLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegistrationState.loading()';
}


}




/// @nodoc


class RegistrationSuccessState implements RegistrationState {
  const RegistrationSuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationSuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegistrationState.success()';
}


}




/// @nodoc


class RegistrationErrorState implements RegistrationState {
  const RegistrationErrorState(this.message);
  

 final  String message;

/// Create a copy of RegistrationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegistrationErrorStateCopyWith<RegistrationErrorState> get copyWith => _$RegistrationErrorStateCopyWithImpl<RegistrationErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RegistrationState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $RegistrationErrorStateCopyWith<$Res> implements $RegistrationStateCopyWith<$Res> {
  factory $RegistrationErrorStateCopyWith(RegistrationErrorState value, $Res Function(RegistrationErrorState) _then) = _$RegistrationErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$RegistrationErrorStateCopyWithImpl<$Res>
    implements $RegistrationErrorStateCopyWith<$Res> {
  _$RegistrationErrorStateCopyWithImpl(this._self, this._then);

  final RegistrationErrorState _self;
  final $Res Function(RegistrationErrorState) _then;

/// Create a copy of RegistrationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(RegistrationErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
