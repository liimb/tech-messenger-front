// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_send_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageSendModel {

@JsonKey(name: 'chatId') String get chatId;@JsonKey(name: 'senderName') String get senderName;@JsonKey(name: 'messageText') String get messageText;
/// Create a copy of MessageSendModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageSendModelCopyWith<MessageSendModel> get copyWith => _$MessageSendModelCopyWithImpl<MessageSendModel>(this as MessageSendModel, _$identity);

  /// Serializes this MessageSendModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageSendModel&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.messageText, messageText) || other.messageText == messageText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatId,senderName,messageText);

@override
String toString() {
  return 'MessageSendModel(chatId: $chatId, senderName: $senderName, messageText: $messageText)';
}


}

/// @nodoc
abstract mixin class $MessageSendModelCopyWith<$Res>  {
  factory $MessageSendModelCopyWith(MessageSendModel value, $Res Function(MessageSendModel) _then) = _$MessageSendModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'chatId') String chatId,@JsonKey(name: 'senderName') String senderName,@JsonKey(name: 'messageText') String messageText
});




}
/// @nodoc
class _$MessageSendModelCopyWithImpl<$Res>
    implements $MessageSendModelCopyWith<$Res> {
  _$MessageSendModelCopyWithImpl(this._self, this._then);

  final MessageSendModel _self;
  final $Res Function(MessageSendModel) _then;

/// Create a copy of MessageSendModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatId = null,Object? senderName = null,Object? messageText = null,}) {
  return _then(_self.copyWith(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,messageText: null == messageText ? _self.messageText : messageText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageSendModel].
extension MessageSendModelPatterns on MessageSendModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageSendModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageSendModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageSendModel value)  $default,){
final _that = this;
switch (_that) {
case _MessageSendModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageSendModel value)?  $default,){
final _that = this;
switch (_that) {
case _MessageSendModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'chatId')  String chatId, @JsonKey(name: 'senderName')  String senderName, @JsonKey(name: 'messageText')  String messageText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageSendModel() when $default != null:
return $default(_that.chatId,_that.senderName,_that.messageText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'chatId')  String chatId, @JsonKey(name: 'senderName')  String senderName, @JsonKey(name: 'messageText')  String messageText)  $default,) {final _that = this;
switch (_that) {
case _MessageSendModel():
return $default(_that.chatId,_that.senderName,_that.messageText);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'chatId')  String chatId, @JsonKey(name: 'senderName')  String senderName, @JsonKey(name: 'messageText')  String messageText)?  $default,) {final _that = this;
switch (_that) {
case _MessageSendModel() when $default != null:
return $default(_that.chatId,_that.senderName,_that.messageText);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageSendModel implements MessageSendModel {
  const _MessageSendModel({@JsonKey(name: 'chatId') required this.chatId, @JsonKey(name: 'senderName') required this.senderName, @JsonKey(name: 'messageText') required this.messageText});
  factory _MessageSendModel.fromJson(Map<String, dynamic> json) => _$MessageSendModelFromJson(json);

@override@JsonKey(name: 'chatId') final  String chatId;
@override@JsonKey(name: 'senderName') final  String senderName;
@override@JsonKey(name: 'messageText') final  String messageText;

/// Create a copy of MessageSendModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageSendModelCopyWith<_MessageSendModel> get copyWith => __$MessageSendModelCopyWithImpl<_MessageSendModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageSendModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageSendModel&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.messageText, messageText) || other.messageText == messageText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatId,senderName,messageText);

@override
String toString() {
  return 'MessageSendModel(chatId: $chatId, senderName: $senderName, messageText: $messageText)';
}


}

/// @nodoc
abstract mixin class _$MessageSendModelCopyWith<$Res> implements $MessageSendModelCopyWith<$Res> {
  factory _$MessageSendModelCopyWith(_MessageSendModel value, $Res Function(_MessageSendModel) _then) = __$MessageSendModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'chatId') String chatId,@JsonKey(name: 'senderName') String senderName,@JsonKey(name: 'messageText') String messageText
});




}
/// @nodoc
class __$MessageSendModelCopyWithImpl<$Res>
    implements _$MessageSendModelCopyWith<$Res> {
  __$MessageSendModelCopyWithImpl(this._self, this._then);

  final _MessageSendModel _self;
  final $Res Function(_MessageSendModel) _then;

/// Create a copy of MessageSendModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatId = null,Object? senderName = null,Object? messageText = null,}) {
  return _then(_MessageSendModel(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,messageText: null == messageText ? _self.messageText : messageText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
