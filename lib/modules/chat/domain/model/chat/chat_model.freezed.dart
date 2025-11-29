// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatModel {

@JsonKey(name: "chatId") String get id;@JsonKey(name: "name") String get name;@JsonKey(name: "lastMessage") String? get lastMessage;@JsonKey(name: "lastMessageTime")@DateTimeNullableConverter() DateTime? get lastMessageTime;@JsonKey(name: "messages") List<MessageModel> get messages;@JsonKey(name: "interlocutors") List<ChatInterlocutorModel> get interlocutors;
/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatModelCopyWith<ChatModel> get copyWith => _$ChatModelCopyWithImpl<ChatModel>(this as ChatModel, _$identity);

  /// Serializes this ChatModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.lastMessageTime, lastMessageTime) || other.lastMessageTime == lastMessageTime)&&const DeepCollectionEquality().equals(other.messages, messages)&&const DeepCollectionEquality().equals(other.interlocutors, interlocutors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,lastMessage,lastMessageTime,const DeepCollectionEquality().hash(messages),const DeepCollectionEquality().hash(interlocutors));

@override
String toString() {
  return 'ChatModel(id: $id, name: $name, lastMessage: $lastMessage, lastMessageTime: $lastMessageTime, messages: $messages, interlocutors: $interlocutors)';
}


}

/// @nodoc
abstract mixin class $ChatModelCopyWith<$Res>  {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) _then) = _$ChatModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "chatId") String id,@JsonKey(name: "name") String name,@JsonKey(name: "lastMessage") String? lastMessage,@JsonKey(name: "lastMessageTime")@DateTimeNullableConverter() DateTime? lastMessageTime,@JsonKey(name: "messages") List<MessageModel> messages,@JsonKey(name: "interlocutors") List<ChatInterlocutorModel> interlocutors
});




}
/// @nodoc
class _$ChatModelCopyWithImpl<$Res>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._self, this._then);

  final ChatModel _self;
  final $Res Function(ChatModel) _then;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? lastMessage = freezed,Object? lastMessageTime = freezed,Object? messages = null,Object? interlocutors = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String?,lastMessageTime: freezed == lastMessageTime ? _self.lastMessageTime : lastMessageTime // ignore: cast_nullable_to_non_nullable
as DateTime?,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageModel>,interlocutors: null == interlocutors ? _self.interlocutors : interlocutors // ignore: cast_nullable_to_non_nullable
as List<ChatInterlocutorModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatModel].
extension ChatModelPatterns on ChatModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatModel value)  $default,){
final _that = this;
switch (_that) {
case _ChatModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChatModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "chatId")  String id, @JsonKey(name: "name")  String name, @JsonKey(name: "lastMessage")  String? lastMessage, @JsonKey(name: "lastMessageTime")@DateTimeNullableConverter()  DateTime? lastMessageTime, @JsonKey(name: "messages")  List<MessageModel> messages, @JsonKey(name: "interlocutors")  List<ChatInterlocutorModel> interlocutors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatModel() when $default != null:
return $default(_that.id,_that.name,_that.lastMessage,_that.lastMessageTime,_that.messages,_that.interlocutors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "chatId")  String id, @JsonKey(name: "name")  String name, @JsonKey(name: "lastMessage")  String? lastMessage, @JsonKey(name: "lastMessageTime")@DateTimeNullableConverter()  DateTime? lastMessageTime, @JsonKey(name: "messages")  List<MessageModel> messages, @JsonKey(name: "interlocutors")  List<ChatInterlocutorModel> interlocutors)  $default,) {final _that = this;
switch (_that) {
case _ChatModel():
return $default(_that.id,_that.name,_that.lastMessage,_that.lastMessageTime,_that.messages,_that.interlocutors);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "chatId")  String id, @JsonKey(name: "name")  String name, @JsonKey(name: "lastMessage")  String? lastMessage, @JsonKey(name: "lastMessageTime")@DateTimeNullableConverter()  DateTime? lastMessageTime, @JsonKey(name: "messages")  List<MessageModel> messages, @JsonKey(name: "interlocutors")  List<ChatInterlocutorModel> interlocutors)?  $default,) {final _that = this;
switch (_that) {
case _ChatModel() when $default != null:
return $default(_that.id,_that.name,_that.lastMessage,_that.lastMessageTime,_that.messages,_that.interlocutors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatModel implements ChatModel {
  const _ChatModel({@JsonKey(name: "chatId") required this.id, @JsonKey(name: "name") this.name = 'Без имени', @JsonKey(name: "lastMessage") this.lastMessage, @JsonKey(name: "lastMessageTime")@DateTimeNullableConverter() this.lastMessageTime, @JsonKey(name: "messages") final  List<MessageModel> messages = const <MessageModel>[], @JsonKey(name: "interlocutors") final  List<ChatInterlocutorModel> interlocutors = const <ChatInterlocutorModel>[]}): _messages = messages,_interlocutors = interlocutors;
  factory _ChatModel.fromJson(Map<String, dynamic> json) => _$ChatModelFromJson(json);

@override@JsonKey(name: "chatId") final  String id;
@override@JsonKey(name: "name") final  String name;
@override@JsonKey(name: "lastMessage") final  String? lastMessage;
@override@JsonKey(name: "lastMessageTime")@DateTimeNullableConverter() final  DateTime? lastMessageTime;
 final  List<MessageModel> _messages;
@override@JsonKey(name: "messages") List<MessageModel> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

 final  List<ChatInterlocutorModel> _interlocutors;
@override@JsonKey(name: "interlocutors") List<ChatInterlocutorModel> get interlocutors {
  if (_interlocutors is EqualUnmodifiableListView) return _interlocutors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interlocutors);
}


/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatModelCopyWith<_ChatModel> get copyWith => __$ChatModelCopyWithImpl<_ChatModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.lastMessageTime, lastMessageTime) || other.lastMessageTime == lastMessageTime)&&const DeepCollectionEquality().equals(other._messages, _messages)&&const DeepCollectionEquality().equals(other._interlocutors, _interlocutors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,lastMessage,lastMessageTime,const DeepCollectionEquality().hash(_messages),const DeepCollectionEquality().hash(_interlocutors));

@override
String toString() {
  return 'ChatModel(id: $id, name: $name, lastMessage: $lastMessage, lastMessageTime: $lastMessageTime, messages: $messages, interlocutors: $interlocutors)';
}


}

/// @nodoc
abstract mixin class _$ChatModelCopyWith<$Res> implements $ChatModelCopyWith<$Res> {
  factory _$ChatModelCopyWith(_ChatModel value, $Res Function(_ChatModel) _then) = __$ChatModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "chatId") String id,@JsonKey(name: "name") String name,@JsonKey(name: "lastMessage") String? lastMessage,@JsonKey(name: "lastMessageTime")@DateTimeNullableConverter() DateTime? lastMessageTime,@JsonKey(name: "messages") List<MessageModel> messages,@JsonKey(name: "interlocutors") List<ChatInterlocutorModel> interlocutors
});




}
/// @nodoc
class __$ChatModelCopyWithImpl<$Res>
    implements _$ChatModelCopyWith<$Res> {
  __$ChatModelCopyWithImpl(this._self, this._then);

  final _ChatModel _self;
  final $Res Function(_ChatModel) _then;

/// Create a copy of ChatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? lastMessage = freezed,Object? lastMessageTime = freezed,Object? messages = null,Object? interlocutors = null,}) {
  return _then(_ChatModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String?,lastMessageTime: freezed == lastMessageTime ? _self.lastMessageTime : lastMessageTime // ignore: cast_nullable_to_non_nullable
as DateTime?,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageModel>,interlocutors: null == interlocutors ? _self._interlocutors : interlocutors // ignore: cast_nullable_to_non_nullable
as List<ChatInterlocutorModel>,
  ));
}


}

// dart format on
