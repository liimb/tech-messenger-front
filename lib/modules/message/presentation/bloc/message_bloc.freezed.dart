// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MessageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageEvent()';
}


}

/// @nodoc
class $MessageEventCopyWith<$Res>  {
$MessageEventCopyWith(MessageEvent _, $Res Function(MessageEvent) __);
}


/// Adds pattern-matching-related methods to [MessageEvent].
extension MessageEventPatterns on MessageEvent {
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


class CreateEvent implements MessageEvent {
  const CreateEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageEvent.create()';
}


}




/// @nodoc
mixin _$MessageState {

 bool get isMine;
/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageStateCopyWith<MessageState> get copyWith => _$MessageStateCopyWithImpl<MessageState>(this as MessageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageState&&(identical(other.isMine, isMine) || other.isMine == isMine));
}


@override
int get hashCode => Object.hash(runtimeType,isMine);

@override
String toString() {
  return 'MessageState(isMine: $isMine)';
}


}

/// @nodoc
abstract mixin class $MessageStateCopyWith<$Res>  {
  factory $MessageStateCopyWith(MessageState value, $Res Function(MessageState) _then) = _$MessageStateCopyWithImpl;
@useResult
$Res call({
 bool isMine
});




}
/// @nodoc
class _$MessageStateCopyWithImpl<$Res>
    implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._self, this._then);

  final MessageState _self;
  final $Res Function(MessageState) _then;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isMine = null,}) {
  return _then(_self.copyWith(
isMine: null == isMine ? _self.isMine : isMine // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageState].
extension MessageStatePatterns on MessageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageState value)  $default,){
final _that = this;
switch (_that) {
case _MessageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageState value)?  $default,){
final _that = this;
switch (_that) {
case _MessageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isMine)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageState() when $default != null:
return $default(_that.isMine);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isMine)  $default,) {final _that = this;
switch (_that) {
case _MessageState():
return $default(_that.isMine);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isMine)?  $default,) {final _that = this;
switch (_that) {
case _MessageState() when $default != null:
return $default(_that.isMine);case _:
  return null;

}
}

}

/// @nodoc


class _MessageState implements MessageState {
  const _MessageState({required this.isMine});
  

@override final  bool isMine;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageStateCopyWith<_MessageState> get copyWith => __$MessageStateCopyWithImpl<_MessageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageState&&(identical(other.isMine, isMine) || other.isMine == isMine));
}


@override
int get hashCode => Object.hash(runtimeType,isMine);

@override
String toString() {
  return 'MessageState(isMine: $isMine)';
}


}

/// @nodoc
abstract mixin class _$MessageStateCopyWith<$Res> implements $MessageStateCopyWith<$Res> {
  factory _$MessageStateCopyWith(_MessageState value, $Res Function(_MessageState) _then) = __$MessageStateCopyWithImpl;
@override @useResult
$Res call({
 bool isMine
});




}
/// @nodoc
class __$MessageStateCopyWithImpl<$Res>
    implements _$MessageStateCopyWith<$Res> {
  __$MessageStateCopyWithImpl(this._self, this._then);

  final _MessageState _self;
  final $Res Function(_MessageState) _then;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isMine = null,}) {
  return _then(_MessageState(
isMine: null == isMine ? _self.isMine : isMine // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
