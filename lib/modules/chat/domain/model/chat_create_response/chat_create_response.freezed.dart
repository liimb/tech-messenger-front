// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_create_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatCreateResponse {

@JsonKey(name: 'chatId') String get chatId;
/// Create a copy of ChatCreateResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCreateResponseCopyWith<ChatCreateResponse> get copyWith => _$ChatCreateResponseCopyWithImpl<ChatCreateResponse>(this as ChatCreateResponse, _$identity);

  /// Serializes this ChatCreateResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatCreateResponse&&(identical(other.chatId, chatId) || other.chatId == chatId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatId);

@override
String toString() {
  return 'ChatCreateResponse(chatId: $chatId)';
}


}

/// @nodoc
abstract mixin class $ChatCreateResponseCopyWith<$Res>  {
  factory $ChatCreateResponseCopyWith(ChatCreateResponse value, $Res Function(ChatCreateResponse) _then) = _$ChatCreateResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'chatId') String chatId
});




}
/// @nodoc
class _$ChatCreateResponseCopyWithImpl<$Res>
    implements $ChatCreateResponseCopyWith<$Res> {
  _$ChatCreateResponseCopyWithImpl(this._self, this._then);

  final ChatCreateResponse _self;
  final $Res Function(ChatCreateResponse) _then;

/// Create a copy of ChatCreateResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatId = null,}) {
  return _then(_self.copyWith(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatCreateResponse].
extension ChatCreateResponsePatterns on ChatCreateResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatCreateResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatCreateResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatCreateResponse value)  $default,){
final _that = this;
switch (_that) {
case _ChatCreateResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatCreateResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ChatCreateResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'chatId')  String chatId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatCreateResponse() when $default != null:
return $default(_that.chatId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'chatId')  String chatId)  $default,) {final _that = this;
switch (_that) {
case _ChatCreateResponse():
return $default(_that.chatId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'chatId')  String chatId)?  $default,) {final _that = this;
switch (_that) {
case _ChatCreateResponse() when $default != null:
return $default(_that.chatId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatCreateResponse implements ChatCreateResponse {
  const _ChatCreateResponse({@JsonKey(name: 'chatId') required this.chatId});
  factory _ChatCreateResponse.fromJson(Map<String, dynamic> json) => _$ChatCreateResponseFromJson(json);

@override@JsonKey(name: 'chatId') final  String chatId;

/// Create a copy of ChatCreateResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatCreateResponseCopyWith<_ChatCreateResponse> get copyWith => __$ChatCreateResponseCopyWithImpl<_ChatCreateResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatCreateResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatCreateResponse&&(identical(other.chatId, chatId) || other.chatId == chatId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatId);

@override
String toString() {
  return 'ChatCreateResponse(chatId: $chatId)';
}


}

/// @nodoc
abstract mixin class _$ChatCreateResponseCopyWith<$Res> implements $ChatCreateResponseCopyWith<$Res> {
  factory _$ChatCreateResponseCopyWith(_ChatCreateResponse value, $Res Function(_ChatCreateResponse) _then) = __$ChatCreateResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'chatId') String chatId
});




}
/// @nodoc
class __$ChatCreateResponseCopyWithImpl<$Res>
    implements _$ChatCreateResponseCopyWith<$Res> {
  __$ChatCreateResponseCopyWithImpl(this._self, this._then);

  final _ChatCreateResponse _self;
  final $Res Function(_ChatCreateResponse) _then;

/// Create a copy of ChatCreateResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatId = null,}) {
  return _then(_ChatCreateResponse(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
