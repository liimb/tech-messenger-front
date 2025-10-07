// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegistrationRequest {

@JsonKey(name: 'nickname') String get nickname;@JsonKey(name: 'password') String get password;@JsonKey(name: 'password_repeat') String get passwordRepeat;
/// Create a copy of RegistrationRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegistrationRequestCopyWith<RegistrationRequest> get copyWith => _$RegistrationRequestCopyWithImpl<RegistrationRequest>(this as RegistrationRequest, _$identity);

  /// Serializes this RegistrationRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationRequest&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordRepeat, passwordRepeat) || other.passwordRepeat == passwordRepeat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nickname,password,passwordRepeat);

@override
String toString() {
  return 'RegistrationRequest(nickname: $nickname, password: $password, passwordRepeat: $passwordRepeat)';
}


}

/// @nodoc
abstract mixin class $RegistrationRequestCopyWith<$Res>  {
  factory $RegistrationRequestCopyWith(RegistrationRequest value, $Res Function(RegistrationRequest) _then) = _$RegistrationRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'nickname') String nickname,@JsonKey(name: 'password') String password,@JsonKey(name: 'password_repeat') String passwordRepeat
});




}
/// @nodoc
class _$RegistrationRequestCopyWithImpl<$Res>
    implements $RegistrationRequestCopyWith<$Res> {
  _$RegistrationRequestCopyWithImpl(this._self, this._then);

  final RegistrationRequest _self;
  final $Res Function(RegistrationRequest) _then;

/// Create a copy of RegistrationRequest
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


/// Adds pattern-matching-related methods to [RegistrationRequest].
extension RegistrationRequestPatterns on RegistrationRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegistrationRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegistrationRequest() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegistrationRequest value)  $default,){
final _that = this;
switch (_that) {
case _RegistrationRequest():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegistrationRequest value)?  $default,){
final _that = this;
switch (_that) {
case _RegistrationRequest() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'nickname')  String nickname, @JsonKey(name: 'password')  String password, @JsonKey(name: 'password_repeat')  String passwordRepeat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegistrationRequest() when $default != null:
return $default(_that.nickname,_that.password,_that.passwordRepeat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'nickname')  String nickname, @JsonKey(name: 'password')  String password, @JsonKey(name: 'password_repeat')  String passwordRepeat)  $default,) {final _that = this;
switch (_that) {
case _RegistrationRequest():
return $default(_that.nickname,_that.password,_that.passwordRepeat);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'nickname')  String nickname, @JsonKey(name: 'password')  String password, @JsonKey(name: 'password_repeat')  String passwordRepeat)?  $default,) {final _that = this;
switch (_that) {
case _RegistrationRequest() when $default != null:
return $default(_that.nickname,_that.password,_that.passwordRepeat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegistrationRequest implements RegistrationRequest {
  const _RegistrationRequest({@JsonKey(name: 'nickname') required this.nickname, @JsonKey(name: 'password') required this.password, @JsonKey(name: 'password_repeat') required this.passwordRepeat});
  factory _RegistrationRequest.fromJson(Map<String, dynamic> json) => _$RegistrationRequestFromJson(json);

@override@JsonKey(name: 'nickname') final  String nickname;
@override@JsonKey(name: 'password') final  String password;
@override@JsonKey(name: 'password_repeat') final  String passwordRepeat;

/// Create a copy of RegistrationRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegistrationRequestCopyWith<_RegistrationRequest> get copyWith => __$RegistrationRequestCopyWithImpl<_RegistrationRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegistrationRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegistrationRequest&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordRepeat, passwordRepeat) || other.passwordRepeat == passwordRepeat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nickname,password,passwordRepeat);

@override
String toString() {
  return 'RegistrationRequest(nickname: $nickname, password: $password, passwordRepeat: $passwordRepeat)';
}


}

/// @nodoc
abstract mixin class _$RegistrationRequestCopyWith<$Res> implements $RegistrationRequestCopyWith<$Res> {
  factory _$RegistrationRequestCopyWith(_RegistrationRequest value, $Res Function(_RegistrationRequest) _then) = __$RegistrationRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'nickname') String nickname,@JsonKey(name: 'password') String password,@JsonKey(name: 'password_repeat') String passwordRepeat
});




}
/// @nodoc
class __$RegistrationRequestCopyWithImpl<$Res>
    implements _$RegistrationRequestCopyWith<$Res> {
  __$RegistrationRequestCopyWithImpl(this._self, this._then);

  final _RegistrationRequest _self;
  final $Res Function(_RegistrationRequest) _then;

/// Create a copy of RegistrationRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nickname = null,Object? password = null,Object? passwordRepeat = null,}) {
  return _then(_RegistrationRequest(
nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordRepeat: null == passwordRepeat ? _self.passwordRepeat : passwordRepeat // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
