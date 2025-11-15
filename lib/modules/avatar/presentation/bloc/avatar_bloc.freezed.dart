// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avatar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AvatarEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvatarEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AvatarEvent()';
}


}

/// @nodoc
class $AvatarEventCopyWith<$Res>  {
$AvatarEventCopyWith(AvatarEvent _, $Res Function(AvatarEvent) __);
}


/// Adds pattern-matching-related methods to [AvatarEvent].
extension AvatarEventPatterns on AvatarEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateEvent value)?  create,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateEvent() when create != null:
return create(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateEvent value)  create,}){
final _that = this;
switch (_that) {
case CreateEvent():
return create(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateEvent value)?  create,}){
final _that = this;
switch (_that) {
case CreateEvent() when create != null:
return create(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  create,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateEvent() when create != null:
return create();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  create,}) {final _that = this;
switch (_that) {
case CreateEvent():
return create();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  create,}) {final _that = this;
switch (_that) {
case CreateEvent() when create != null:
return create();case _:
  return null;

}
}

}

/// @nodoc


class CreateEvent implements AvatarEvent {
  const CreateEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AvatarEvent.create()';
}


}




/// @nodoc
mixin _$AvatarState {

 String? get picture;
/// Create a copy of AvatarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvatarStateCopyWith<AvatarState> get copyWith => _$AvatarStateCopyWithImpl<AvatarState>(this as AvatarState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvatarState&&(identical(other.picture, picture) || other.picture == picture));
}


@override
int get hashCode => Object.hash(runtimeType,picture);

@override
String toString() {
  return 'AvatarState(picture: $picture)';
}


}

/// @nodoc
abstract mixin class $AvatarStateCopyWith<$Res>  {
  factory $AvatarStateCopyWith(AvatarState value, $Res Function(AvatarState) _then) = _$AvatarStateCopyWithImpl;
@useResult
$Res call({
 String? picture
});




}
/// @nodoc
class _$AvatarStateCopyWithImpl<$Res>
    implements $AvatarStateCopyWith<$Res> {
  _$AvatarStateCopyWithImpl(this._self, this._then);

  final AvatarState _self;
  final $Res Function(AvatarState) _then;

/// Create a copy of AvatarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? picture = freezed,}) {
  return _then(_self.copyWith(
picture: freezed == picture ? _self.picture : picture // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AvatarState].
extension AvatarStatePatterns on AvatarState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AvatarState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AvatarState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AvatarState value)  $default,){
final _that = this;
switch (_that) {
case _AvatarState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AvatarState value)?  $default,){
final _that = this;
switch (_that) {
case _AvatarState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? picture)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AvatarState() when $default != null:
return $default(_that.picture);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? picture)  $default,) {final _that = this;
switch (_that) {
case _AvatarState():
return $default(_that.picture);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? picture)?  $default,) {final _that = this;
switch (_that) {
case _AvatarState() when $default != null:
return $default(_that.picture);case _:
  return null;

}
}

}

/// @nodoc


class _AvatarState implements AvatarState {
  const _AvatarState({required this.picture});
  

@override final  String? picture;

/// Create a copy of AvatarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvatarStateCopyWith<_AvatarState> get copyWith => __$AvatarStateCopyWithImpl<_AvatarState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvatarState&&(identical(other.picture, picture) || other.picture == picture));
}


@override
int get hashCode => Object.hash(runtimeType,picture);

@override
String toString() {
  return 'AvatarState(picture: $picture)';
}


}

/// @nodoc
abstract mixin class _$AvatarStateCopyWith<$Res> implements $AvatarStateCopyWith<$Res> {
  factory _$AvatarStateCopyWith(_AvatarState value, $Res Function(_AvatarState) _then) = __$AvatarStateCopyWithImpl;
@override @useResult
$Res call({
 String? picture
});




}
/// @nodoc
class __$AvatarStateCopyWithImpl<$Res>
    implements _$AvatarStateCopyWith<$Res> {
  __$AvatarStateCopyWithImpl(this._self, this._then);

  final _AvatarState _self;
  final $Res Function(_AvatarState) _then;

/// Create a copy of AvatarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? picture = freezed,}) {
  return _then(_AvatarState(
picture: freezed == picture ? _self.picture : picture // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
