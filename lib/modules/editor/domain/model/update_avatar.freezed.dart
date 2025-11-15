// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_avatar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateAvatarRequest {

@JsonKey(name: "avatar") String get avatar;
/// Create a copy of UpdateAvatarRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateAvatarRequestCopyWith<UpdateAvatarRequest> get copyWith => _$UpdateAvatarRequestCopyWithImpl<UpdateAvatarRequest>(this as UpdateAvatarRequest, _$identity);

  /// Serializes this UpdateAvatarRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateAvatarRequest&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,avatar);

@override
String toString() {
  return 'UpdateAvatarRequest(avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class $UpdateAvatarRequestCopyWith<$Res>  {
  factory $UpdateAvatarRequestCopyWith(UpdateAvatarRequest value, $Res Function(UpdateAvatarRequest) _then) = _$UpdateAvatarRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "avatar") String avatar
});




}
/// @nodoc
class _$UpdateAvatarRequestCopyWithImpl<$Res>
    implements $UpdateAvatarRequestCopyWith<$Res> {
  _$UpdateAvatarRequestCopyWithImpl(this._self, this._then);

  final UpdateAvatarRequest _self;
  final $Res Function(UpdateAvatarRequest) _then;

/// Create a copy of UpdateAvatarRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? avatar = null,}) {
  return _then(_self.copyWith(
avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateAvatarRequest].
extension UpdateAvatarRequestPatterns on UpdateAvatarRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateAvatarRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateAvatarRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateAvatarRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateAvatarRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateAvatarRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateAvatarRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "avatar")  String avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateAvatarRequest() when $default != null:
return $default(_that.avatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "avatar")  String avatar)  $default,) {final _that = this;
switch (_that) {
case _UpdateAvatarRequest():
return $default(_that.avatar);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "avatar")  String avatar)?  $default,) {final _that = this;
switch (_that) {
case _UpdateAvatarRequest() when $default != null:
return $default(_that.avatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateAvatarRequest implements UpdateAvatarRequest {
  const _UpdateAvatarRequest({@JsonKey(name: "avatar") required this.avatar});
  factory _UpdateAvatarRequest.fromJson(Map<String, dynamic> json) => _$UpdateAvatarRequestFromJson(json);

@override@JsonKey(name: "avatar") final  String avatar;

/// Create a copy of UpdateAvatarRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAvatarRequestCopyWith<_UpdateAvatarRequest> get copyWith => __$UpdateAvatarRequestCopyWithImpl<_UpdateAvatarRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateAvatarRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAvatarRequest&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,avatar);

@override
String toString() {
  return 'UpdateAvatarRequest(avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$UpdateAvatarRequestCopyWith<$Res> implements $UpdateAvatarRequestCopyWith<$Res> {
  factory _$UpdateAvatarRequestCopyWith(_UpdateAvatarRequest value, $Res Function(_UpdateAvatarRequest) _then) = __$UpdateAvatarRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "avatar") String avatar
});




}
/// @nodoc
class __$UpdateAvatarRequestCopyWithImpl<$Res>
    implements _$UpdateAvatarRequestCopyWith<$Res> {
  __$UpdateAvatarRequestCopyWithImpl(this._self, this._then);

  final _UpdateAvatarRequest _self;
  final $Res Function(_UpdateAvatarRequest) _then;

/// Create a copy of UpdateAvatarRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? avatar = null,}) {
  return _then(_UpdateAvatarRequest(
avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
