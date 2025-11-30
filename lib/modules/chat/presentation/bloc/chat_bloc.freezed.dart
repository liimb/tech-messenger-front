// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatEvent()';
}


}

/// @nodoc
class $ChatEventCopyWith<$Res>  {
$ChatEventCopyWith(ChatEvent _, $Res Function(ChatEvent) __);
}


/// Adds pattern-matching-related methods to [ChatEvent].
extension ChatEventPatterns on ChatEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChatStartedEvent value)?  started,TResult Function( ChatCreateEvent value)?  create,TResult Function( ChatSelectEvent value)?  select,TResult Function( ChatRefreshEvent value)?  refresh,TResult Function( ChatsUpdatedEvent value)?  chatsUpdated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChatStartedEvent() when started != null:
return started(_that);case ChatCreateEvent() when create != null:
return create(_that);case ChatSelectEvent() when select != null:
return select(_that);case ChatRefreshEvent() when refresh != null:
return refresh(_that);case ChatsUpdatedEvent() when chatsUpdated != null:
return chatsUpdated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChatStartedEvent value)  started,required TResult Function( ChatCreateEvent value)  create,required TResult Function( ChatSelectEvent value)  select,required TResult Function( ChatRefreshEvent value)  refresh,required TResult Function( ChatsUpdatedEvent value)  chatsUpdated,}){
final _that = this;
switch (_that) {
case ChatStartedEvent():
return started(_that);case ChatCreateEvent():
return create(_that);case ChatSelectEvent():
return select(_that);case ChatRefreshEvent():
return refresh(_that);case ChatsUpdatedEvent():
return chatsUpdated(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChatStartedEvent value)?  started,TResult? Function( ChatCreateEvent value)?  create,TResult? Function( ChatSelectEvent value)?  select,TResult? Function( ChatRefreshEvent value)?  refresh,TResult? Function( ChatsUpdatedEvent value)?  chatsUpdated,}){
final _that = this;
switch (_that) {
case ChatStartedEvent() when started != null:
return started(_that);case ChatCreateEvent() when create != null:
return create(_that);case ChatSelectEvent() when select != null:
return select(_that);case ChatRefreshEvent() when refresh != null:
return refresh(_that);case ChatsUpdatedEvent() when chatsUpdated != null:
return chatsUpdated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( ChatCreateModel chatCreate)?  create,TResult Function( String chatId)?  select,TResult Function()?  refresh,TResult Function( List<ChatModel> chats)?  chatsUpdated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChatStartedEvent() when started != null:
return started();case ChatCreateEvent() when create != null:
return create(_that.chatCreate);case ChatSelectEvent() when select != null:
return select(_that.chatId);case ChatRefreshEvent() when refresh != null:
return refresh();case ChatsUpdatedEvent() when chatsUpdated != null:
return chatsUpdated(_that.chats);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( ChatCreateModel chatCreate)  create,required TResult Function( String chatId)  select,required TResult Function()  refresh,required TResult Function( List<ChatModel> chats)  chatsUpdated,}) {final _that = this;
switch (_that) {
case ChatStartedEvent():
return started();case ChatCreateEvent():
return create(_that.chatCreate);case ChatSelectEvent():
return select(_that.chatId);case ChatRefreshEvent():
return refresh();case ChatsUpdatedEvent():
return chatsUpdated(_that.chats);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( ChatCreateModel chatCreate)?  create,TResult? Function( String chatId)?  select,TResult? Function()?  refresh,TResult? Function( List<ChatModel> chats)?  chatsUpdated,}) {final _that = this;
switch (_that) {
case ChatStartedEvent() when started != null:
return started();case ChatCreateEvent() when create != null:
return create(_that.chatCreate);case ChatSelectEvent() when select != null:
return select(_that.chatId);case ChatRefreshEvent() when refresh != null:
return refresh();case ChatsUpdatedEvent() when chatsUpdated != null:
return chatsUpdated(_that.chats);case _:
  return null;

}
}

}

/// @nodoc


class ChatStartedEvent implements ChatEvent {
  const ChatStartedEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatStartedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatEvent.started()';
}


}




/// @nodoc


class ChatCreateEvent implements ChatEvent {
  const ChatCreateEvent(this.chatCreate);
  

 final  ChatCreateModel chatCreate;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCreateEventCopyWith<ChatCreateEvent> get copyWith => _$ChatCreateEventCopyWithImpl<ChatCreateEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatCreateEvent&&(identical(other.chatCreate, chatCreate) || other.chatCreate == chatCreate));
}


@override
int get hashCode => Object.hash(runtimeType,chatCreate);

@override
String toString() {
  return 'ChatEvent.create(chatCreate: $chatCreate)';
}


}

/// @nodoc
abstract mixin class $ChatCreateEventCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory $ChatCreateEventCopyWith(ChatCreateEvent value, $Res Function(ChatCreateEvent) _then) = _$ChatCreateEventCopyWithImpl;
@useResult
$Res call({
 ChatCreateModel chatCreate
});


$ChatCreateModelCopyWith<$Res> get chatCreate;

}
/// @nodoc
class _$ChatCreateEventCopyWithImpl<$Res>
    implements $ChatCreateEventCopyWith<$Res> {
  _$ChatCreateEventCopyWithImpl(this._self, this._then);

  final ChatCreateEvent _self;
  final $Res Function(ChatCreateEvent) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chatCreate = null,}) {
  return _then(ChatCreateEvent(
null == chatCreate ? _self.chatCreate : chatCreate // ignore: cast_nullable_to_non_nullable
as ChatCreateModel,
  ));
}

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatCreateModelCopyWith<$Res> get chatCreate {
  
  return $ChatCreateModelCopyWith<$Res>(_self.chatCreate, (value) {
    return _then(_self.copyWith(chatCreate: value));
  });
}
}

/// @nodoc


class ChatSelectEvent implements ChatEvent {
  const ChatSelectEvent(this.chatId);
  

 final  String chatId;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatSelectEventCopyWith<ChatSelectEvent> get copyWith => _$ChatSelectEventCopyWithImpl<ChatSelectEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatSelectEvent&&(identical(other.chatId, chatId) || other.chatId == chatId));
}


@override
int get hashCode => Object.hash(runtimeType,chatId);

@override
String toString() {
  return 'ChatEvent.select(chatId: $chatId)';
}


}

/// @nodoc
abstract mixin class $ChatSelectEventCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory $ChatSelectEventCopyWith(ChatSelectEvent value, $Res Function(ChatSelectEvent) _then) = _$ChatSelectEventCopyWithImpl;
@useResult
$Res call({
 String chatId
});




}
/// @nodoc
class _$ChatSelectEventCopyWithImpl<$Res>
    implements $ChatSelectEventCopyWith<$Res> {
  _$ChatSelectEventCopyWithImpl(this._self, this._then);

  final ChatSelectEvent _self;
  final $Res Function(ChatSelectEvent) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chatId = null,}) {
  return _then(ChatSelectEvent(
null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChatRefreshEvent implements ChatEvent {
  const ChatRefreshEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRefreshEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatEvent.refresh()';
}


}




/// @nodoc


class ChatsUpdatedEvent implements ChatEvent {
  const ChatsUpdatedEvent(final  List<ChatModel> chats): _chats = chats;
  

 final  List<ChatModel> _chats;
 List<ChatModel> get chats {
  if (_chats is EqualUnmodifiableListView) return _chats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chats);
}


/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatsUpdatedEventCopyWith<ChatsUpdatedEvent> get copyWith => _$ChatsUpdatedEventCopyWithImpl<ChatsUpdatedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatsUpdatedEvent&&const DeepCollectionEquality().equals(other._chats, _chats));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chats));

@override
String toString() {
  return 'ChatEvent.chatsUpdated(chats: $chats)';
}


}

/// @nodoc
abstract mixin class $ChatsUpdatedEventCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory $ChatsUpdatedEventCopyWith(ChatsUpdatedEvent value, $Res Function(ChatsUpdatedEvent) _then) = _$ChatsUpdatedEventCopyWithImpl;
@useResult
$Res call({
 List<ChatModel> chats
});




}
/// @nodoc
class _$ChatsUpdatedEventCopyWithImpl<$Res>
    implements $ChatsUpdatedEventCopyWith<$Res> {
  _$ChatsUpdatedEventCopyWithImpl(this._self, this._then);

  final ChatsUpdatedEvent _self;
  final $Res Function(ChatsUpdatedEvent) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chats = null,}) {
  return _then(ChatsUpdatedEvent(
null == chats ? _self._chats : chats // ignore: cast_nullable_to_non_nullable
as List<ChatModel>,
  ));
}


}

/// @nodoc
mixin _$ChatState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatState()';
}


}

/// @nodoc
class $ChatStateCopyWith<$Res>  {
$ChatStateCopyWith(ChatState _, $Res Function(ChatState) __);
}


/// Adds pattern-matching-related methods to [ChatState].
extension ChatStatePatterns on ChatState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChatInitialState value)?  initial,TResult Function( ChatLoadingState value)?  loading,TResult Function( ChatLoadedState value)?  loaded,TResult Function( ChatFailureState value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChatInitialState() when initial != null:
return initial(_that);case ChatLoadingState() when loading != null:
return loading(_that);case ChatLoadedState() when loaded != null:
return loaded(_that);case ChatFailureState() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChatInitialState value)  initial,required TResult Function( ChatLoadingState value)  loading,required TResult Function( ChatLoadedState value)  loaded,required TResult Function( ChatFailureState value)  failure,}){
final _that = this;
switch (_that) {
case ChatInitialState():
return initial(_that);case ChatLoadingState():
return loading(_that);case ChatLoadedState():
return loaded(_that);case ChatFailureState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChatInitialState value)?  initial,TResult? Function( ChatLoadingState value)?  loading,TResult? Function( ChatLoadedState value)?  loaded,TResult? Function( ChatFailureState value)?  failure,}){
final _that = this;
switch (_that) {
case ChatInitialState() when initial != null:
return initial(_that);case ChatLoadingState() when loading != null:
return loading(_that);case ChatLoadedState() when loaded != null:
return loaded(_that);case ChatFailureState() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<ChatModel> chats,  String? selectedChatId)?  loaded,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChatInitialState() when initial != null:
return initial();case ChatLoadingState() when loading != null:
return loading();case ChatLoadedState() when loaded != null:
return loaded(_that.chats,_that.selectedChatId);case ChatFailureState() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<ChatModel> chats,  String? selectedChatId)  loaded,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case ChatInitialState():
return initial();case ChatLoadingState():
return loading();case ChatLoadedState():
return loaded(_that.chats,_that.selectedChatId);case ChatFailureState():
return failure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<ChatModel> chats,  String? selectedChatId)?  loaded,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case ChatInitialState() when initial != null:
return initial();case ChatLoadingState() when loading != null:
return loading();case ChatLoadedState() when loaded != null:
return loaded(_that.chats,_that.selectedChatId);case ChatFailureState() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ChatInitialState implements ChatState {
  const ChatInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatState.initial()';
}


}




/// @nodoc


class ChatLoadingState implements ChatState {
  const ChatLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatState.loading()';
}


}




/// @nodoc


class ChatLoadedState implements ChatState {
  const ChatLoadedState({required final  List<ChatModel> chats, this.selectedChatId}): _chats = chats;
  

 final  List<ChatModel> _chats;
 List<ChatModel> get chats {
  if (_chats is EqualUnmodifiableListView) return _chats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chats);
}

 final  String? selectedChatId;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatLoadedStateCopyWith<ChatLoadedState> get copyWith => _$ChatLoadedStateCopyWithImpl<ChatLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatLoadedState&&const DeepCollectionEquality().equals(other._chats, _chats)&&(identical(other.selectedChatId, selectedChatId) || other.selectedChatId == selectedChatId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chats),selectedChatId);

@override
String toString() {
  return 'ChatState.loaded(chats: $chats, selectedChatId: $selectedChatId)';
}


}

/// @nodoc
abstract mixin class $ChatLoadedStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory $ChatLoadedStateCopyWith(ChatLoadedState value, $Res Function(ChatLoadedState) _then) = _$ChatLoadedStateCopyWithImpl;
@useResult
$Res call({
 List<ChatModel> chats, String? selectedChatId
});




}
/// @nodoc
class _$ChatLoadedStateCopyWithImpl<$Res>
    implements $ChatLoadedStateCopyWith<$Res> {
  _$ChatLoadedStateCopyWithImpl(this._self, this._then);

  final ChatLoadedState _self;
  final $Res Function(ChatLoadedState) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chats = null,Object? selectedChatId = freezed,}) {
  return _then(ChatLoadedState(
chats: null == chats ? _self._chats : chats // ignore: cast_nullable_to_non_nullable
as List<ChatModel>,selectedChatId: freezed == selectedChatId ? _self.selectedChatId : selectedChatId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ChatFailureState implements ChatState {
  const ChatFailureState({required this.message});
  

 final  String message;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatFailureStateCopyWith<ChatFailureState> get copyWith => _$ChatFailureStateCopyWithImpl<ChatFailureState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatFailureState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ChatState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $ChatFailureStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory $ChatFailureStateCopyWith(ChatFailureState value, $Res Function(ChatFailureState) _then) = _$ChatFailureStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ChatFailureStateCopyWithImpl<$Res>
    implements $ChatFailureStateCopyWith<$Res> {
  _$ChatFailureStateCopyWithImpl(this._self, this._then);

  final ChatFailureState _self;
  final $Res Function(ChatFailureState) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ChatFailureState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
