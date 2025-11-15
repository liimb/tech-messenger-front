// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateDescriptionRequest {

@JsonKey(name: "description") String get description;
/// Create a copy of UpdateDescriptionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDescriptionRequestCopyWith<UpdateDescriptionRequest> get copyWith => _$UpdateDescriptionRequestCopyWithImpl<UpdateDescriptionRequest>(this as UpdateDescriptionRequest, _$identity);

  /// Serializes this UpdateDescriptionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDescriptionRequest&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'UpdateDescriptionRequest(description: $description)';
}


}

/// @nodoc
abstract mixin class $UpdateDescriptionRequestCopyWith<$Res>  {
  factory $UpdateDescriptionRequestCopyWith(UpdateDescriptionRequest value, $Res Function(UpdateDescriptionRequest) _then) = _$UpdateDescriptionRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "description") String description
});




}
/// @nodoc
class _$UpdateDescriptionRequestCopyWithImpl<$Res>
    implements $UpdateDescriptionRequestCopyWith<$Res> {
  _$UpdateDescriptionRequestCopyWithImpl(this._self, this._then);

  final UpdateDescriptionRequest _self;
  final $Res Function(UpdateDescriptionRequest) _then;

/// Create a copy of UpdateDescriptionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateDescriptionRequest].
extension UpdateDescriptionRequestPatterns on UpdateDescriptionRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateDescriptionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateDescriptionRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateDescriptionRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateDescriptionRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateDescriptionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateDescriptionRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "description")  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateDescriptionRequest() when $default != null:
return $default(_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "description")  String description)  $default,) {final _that = this;
switch (_that) {
case _UpdateDescriptionRequest():
return $default(_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "description")  String description)?  $default,) {final _that = this;
switch (_that) {
case _UpdateDescriptionRequest() when $default != null:
return $default(_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateDescriptionRequest implements UpdateDescriptionRequest {
  const _UpdateDescriptionRequest({@JsonKey(name: "description") required this.description});
  factory _UpdateDescriptionRequest.fromJson(Map<String, dynamic> json) => _$UpdateDescriptionRequestFromJson(json);

@override@JsonKey(name: "description") final  String description;

/// Create a copy of UpdateDescriptionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDescriptionRequestCopyWith<_UpdateDescriptionRequest> get copyWith => __$UpdateDescriptionRequestCopyWithImpl<_UpdateDescriptionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateDescriptionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDescriptionRequest&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'UpdateDescriptionRequest(description: $description)';
}


}

/// @nodoc
abstract mixin class _$UpdateDescriptionRequestCopyWith<$Res> implements $UpdateDescriptionRequestCopyWith<$Res> {
  factory _$UpdateDescriptionRequestCopyWith(_UpdateDescriptionRequest value, $Res Function(_UpdateDescriptionRequest) _then) = __$UpdateDescriptionRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "description") String description
});




}
/// @nodoc
class __$UpdateDescriptionRequestCopyWithImpl<$Res>
    implements _$UpdateDescriptionRequestCopyWith<$Res> {
  __$UpdateDescriptionRequestCopyWithImpl(this._self, this._then);

  final _UpdateDescriptionRequest _self;
  final $Res Function(_UpdateDescriptionRequest) _then;

/// Create a copy of UpdateDescriptionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,}) {
  return _then(_UpdateDescriptionRequest(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
