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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MessageCreateEvent value)?  create,TResult Function( MessageSendEvent value)?  sendMessage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MessageCreateEvent() when create != null:
return create(_that);case MessageSendEvent() when sendMessage != null:
return sendMessage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MessageCreateEvent value)  create,required TResult Function( MessageSendEvent value)  sendMessage,}){
final _that = this;
switch (_that) {
case MessageCreateEvent():
return create(_that);case MessageSendEvent():
return sendMessage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MessageCreateEvent value)?  create,TResult? Function( MessageSendEvent value)?  sendMessage,}){
final _that = this;
switch (_that) {
case MessageCreateEvent() when create != null:
return create(_that);case MessageSendEvent() when sendMessage != null:
return sendMessage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  create,TResult Function( MessageSendModel sendModel)?  sendMessage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MessageCreateEvent() when create != null:
return create();case MessageSendEvent() when sendMessage != null:
return sendMessage(_that.sendModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  create,required TResult Function( MessageSendModel sendModel)  sendMessage,}) {final _that = this;
switch (_that) {
case MessageCreateEvent():
return create();case MessageSendEvent():
return sendMessage(_that.sendModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  create,TResult? Function( MessageSendModel sendModel)?  sendMessage,}) {final _that = this;
switch (_that) {
case MessageCreateEvent() when create != null:
return create();case MessageSendEvent() when sendMessage != null:
return sendMessage(_that.sendModel);case _:
  return null;

}
}

}

/// @nodoc


class MessageCreateEvent implements MessageEvent {
  const MessageCreateEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageCreateEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageEvent.create()';
}


}




/// @nodoc


class MessageSendEvent implements MessageEvent {
  const MessageSendEvent(this.sendModel);
  

 final  MessageSendModel sendModel;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageSendEventCopyWith<MessageSendEvent> get copyWith => _$MessageSendEventCopyWithImpl<MessageSendEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageSendEvent&&(identical(other.sendModel, sendModel) || other.sendModel == sendModel));
}


@override
int get hashCode => Object.hash(runtimeType,sendModel);

@override
String toString() {
  return 'MessageEvent.sendMessage(sendModel: $sendModel)';
}


}

/// @nodoc
abstract mixin class $MessageSendEventCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory $MessageSendEventCopyWith(MessageSendEvent value, $Res Function(MessageSendEvent) _then) = _$MessageSendEventCopyWithImpl;
@useResult
$Res call({
 MessageSendModel sendModel
});


$MessageSendModelCopyWith<$Res> get sendModel;

}
/// @nodoc
class _$MessageSendEventCopyWithImpl<$Res>
    implements $MessageSendEventCopyWith<$Res> {
  _$MessageSendEventCopyWithImpl(this._self, this._then);

  final MessageSendEvent _self;
  final $Res Function(MessageSendEvent) _then;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sendModel = null,}) {
  return _then(MessageSendEvent(
null == sendModel ? _self.sendModel : sendModel // ignore: cast_nullable_to_non_nullable
as MessageSendModel,
  ));
}

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageSendModelCopyWith<$Res> get sendModel {
  
  return $MessageSendModelCopyWith<$Res>(_self.sendModel, (value) {
    return _then(_self.copyWith(sendModel: value));
  });
}
}

/// @nodoc
mixin _$MessageState {

 String? get myNickname; bool? get lastSendSuccess;
/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageStateCopyWith<MessageState> get copyWith => _$MessageStateCopyWithImpl<MessageState>(this as MessageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageState&&(identical(other.myNickname, myNickname) || other.myNickname == myNickname)&&(identical(other.lastSendSuccess, lastSendSuccess) || other.lastSendSuccess == lastSendSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,myNickname,lastSendSuccess);

@override
String toString() {
  return 'MessageState(myNickname: $myNickname, lastSendSuccess: $lastSendSuccess)';
}


}

/// @nodoc
abstract mixin class $MessageStateCopyWith<$Res>  {
  factory $MessageStateCopyWith(MessageState value, $Res Function(MessageState) _then) = _$MessageStateCopyWithImpl;
@useResult
$Res call({
 String? myNickname, bool? lastSendSuccess
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
@pragma('vm:prefer-inline') @override $Res call({Object? myNickname = freezed,Object? lastSendSuccess = freezed,}) {
  return _then(_self.copyWith(
myNickname: freezed == myNickname ? _self.myNickname : myNickname // ignore: cast_nullable_to_non_nullable
as String?,lastSendSuccess: freezed == lastSendSuccess ? _self.lastSendSuccess : lastSendSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? myNickname,  bool? lastSendSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageState() when $default != null:
return $default(_that.myNickname,_that.lastSendSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? myNickname,  bool? lastSendSuccess)  $default,) {final _that = this;
switch (_that) {
case _MessageState():
return $default(_that.myNickname,_that.lastSendSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? myNickname,  bool? lastSendSuccess)?  $default,) {final _that = this;
switch (_that) {
case _MessageState() when $default != null:
return $default(_that.myNickname,_that.lastSendSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _MessageState implements MessageState {
  const _MessageState({this.myNickname, this.lastSendSuccess});
  

@override final  String? myNickname;
@override final  bool? lastSendSuccess;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageStateCopyWith<_MessageState> get copyWith => __$MessageStateCopyWithImpl<_MessageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageState&&(identical(other.myNickname, myNickname) || other.myNickname == myNickname)&&(identical(other.lastSendSuccess, lastSendSuccess) || other.lastSendSuccess == lastSendSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,myNickname,lastSendSuccess);

@override
String toString() {
  return 'MessageState(myNickname: $myNickname, lastSendSuccess: $lastSendSuccess)';
}


}

/// @nodoc
abstract mixin class _$MessageStateCopyWith<$Res> implements $MessageStateCopyWith<$Res> {
  factory _$MessageStateCopyWith(_MessageState value, $Res Function(_MessageState) _then) = __$MessageStateCopyWithImpl;
@override @useResult
$Res call({
 String? myNickname, bool? lastSendSuccess
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
@override @pragma('vm:prefer-inline') $Res call({Object? myNickname = freezed,Object? lastSendSuccess = freezed,}) {
  return _then(_MessageState(
myNickname: freezed == myNickname ? _self.myNickname : myNickname // ignore: cast_nullable_to_non_nullable
as String?,lastSendSuccess: freezed == lastSendSuccess ? _self.lastSendSuccess : lastSendSuccess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
