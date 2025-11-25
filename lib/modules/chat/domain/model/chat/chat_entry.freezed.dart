// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatEntry {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatEntry);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatEntry()';
}


}

/// @nodoc
class $ChatEntryCopyWith<$Res>  {
$ChatEntryCopyWith(ChatEntry _, $Res Function(ChatEntry) __);
}


/// Adds pattern-matching-related methods to [ChatEntry].
extension ChatEntryPatterns on ChatEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChatEntryExisting value)?  existing,TResult Function( ChatEntryWithUser value)?  withUser,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChatEntryExisting() when existing != null:
return existing(_that);case ChatEntryWithUser() when withUser != null:
return withUser(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChatEntryExisting value)  existing,required TResult Function( ChatEntryWithUser value)  withUser,}){
final _that = this;
switch (_that) {
case ChatEntryExisting():
return existing(_that);case ChatEntryWithUser():
return withUser(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChatEntryExisting value)?  existing,TResult? Function( ChatEntryWithUser value)?  withUser,}){
final _that = this;
switch (_that) {
case ChatEntryExisting() when existing != null:
return existing(_that);case ChatEntryWithUser() when withUser != null:
return withUser(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ChatModel chat)?  existing,TResult Function( UserModel user)?  withUser,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChatEntryExisting() when existing != null:
return existing(_that.chat);case ChatEntryWithUser() when withUser != null:
return withUser(_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ChatModel chat)  existing,required TResult Function( UserModel user)  withUser,}) {final _that = this;
switch (_that) {
case ChatEntryExisting():
return existing(_that.chat);case ChatEntryWithUser():
return withUser(_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ChatModel chat)?  existing,TResult? Function( UserModel user)?  withUser,}) {final _that = this;
switch (_that) {
case ChatEntryExisting() when existing != null:
return existing(_that.chat);case ChatEntryWithUser() when withUser != null:
return withUser(_that.user);case _:
  return null;

}
}

}

/// @nodoc


class ChatEntryExisting implements ChatEntry {
  const ChatEntryExisting({required this.chat});
  

 final  ChatModel chat;

/// Create a copy of ChatEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatEntryExistingCopyWith<ChatEntryExisting> get copyWith => _$ChatEntryExistingCopyWithImpl<ChatEntryExisting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatEntryExisting&&(identical(other.chat, chat) || other.chat == chat));
}


@override
int get hashCode => Object.hash(runtimeType,chat);

@override
String toString() {
  return 'ChatEntry.existing(chat: $chat)';
}


}

/// @nodoc
abstract mixin class $ChatEntryExistingCopyWith<$Res> implements $ChatEntryCopyWith<$Res> {
  factory $ChatEntryExistingCopyWith(ChatEntryExisting value, $Res Function(ChatEntryExisting) _then) = _$ChatEntryExistingCopyWithImpl;
@useResult
$Res call({
 ChatModel chat
});


$ChatModelCopyWith<$Res> get chat;

}
/// @nodoc
class _$ChatEntryExistingCopyWithImpl<$Res>
    implements $ChatEntryExistingCopyWith<$Res> {
  _$ChatEntryExistingCopyWithImpl(this._self, this._then);

  final ChatEntryExisting _self;
  final $Res Function(ChatEntryExisting) _then;

/// Create a copy of ChatEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chat = null,}) {
  return _then(ChatEntryExisting(
chat: null == chat ? _self.chat : chat // ignore: cast_nullable_to_non_nullable
as ChatModel,
  ));
}

/// Create a copy of ChatEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatModelCopyWith<$Res> get chat {
  
  return $ChatModelCopyWith<$Res>(_self.chat, (value) {
    return _then(_self.copyWith(chat: value));
  });
}
}

/// @nodoc


class ChatEntryWithUser implements ChatEntry {
  const ChatEntryWithUser({required this.user});
  

 final  UserModel user;

/// Create a copy of ChatEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatEntryWithUserCopyWith<ChatEntryWithUser> get copyWith => _$ChatEntryWithUserCopyWithImpl<ChatEntryWithUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatEntryWithUser&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'ChatEntry.withUser(user: $user)';
}


}

/// @nodoc
abstract mixin class $ChatEntryWithUserCopyWith<$Res> implements $ChatEntryCopyWith<$Res> {
  factory $ChatEntryWithUserCopyWith(ChatEntryWithUser value, $Res Function(ChatEntryWithUser) _then) = _$ChatEntryWithUserCopyWithImpl;
@useResult
$Res call({
 UserModel user
});


$UserModelCopyWith<$Res> get user;

}
/// @nodoc
class _$ChatEntryWithUserCopyWithImpl<$Res>
    implements $ChatEntryWithUserCopyWith<$Res> {
  _$ChatEntryWithUserCopyWithImpl(this._self, this._then);

  final ChatEntryWithUser _self;
  final $Res Function(ChatEntryWithUser) _then;

/// Create a copy of ChatEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(ChatEntryWithUser(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}

/// Create a copy of ChatEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
