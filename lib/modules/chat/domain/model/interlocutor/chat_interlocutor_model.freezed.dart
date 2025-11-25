// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_interlocutor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatInterlocutorModel {

@JsonKey(name: 'nickname') String get nickname;@JsonKey(name: 'name') String get name;@JsonKey(name: 'avatar') String? get avatar;
/// Create a copy of ChatInterlocutorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatInterlocutorModelCopyWith<ChatInterlocutorModel> get copyWith => _$ChatInterlocutorModelCopyWithImpl<ChatInterlocutorModel>(this as ChatInterlocutorModel, _$identity);

  /// Serializes this ChatInterlocutorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatInterlocutorModel&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nickname,name,avatar);

@override
String toString() {
  return 'ChatInterlocutorModel(nickname: $nickname, name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class $ChatInterlocutorModelCopyWith<$Res>  {
  factory $ChatInterlocutorModelCopyWith(ChatInterlocutorModel value, $Res Function(ChatInterlocutorModel) _then) = _$ChatInterlocutorModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'nickname') String nickname,@JsonKey(name: 'name') String name,@JsonKey(name: 'avatar') String? avatar
});




}
/// @nodoc
class _$ChatInterlocutorModelCopyWithImpl<$Res>
    implements $ChatInterlocutorModelCopyWith<$Res> {
  _$ChatInterlocutorModelCopyWithImpl(this._self, this._then);

  final ChatInterlocutorModel _self;
  final $Res Function(ChatInterlocutorModel) _then;

/// Create a copy of ChatInterlocutorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nickname = null,Object? name = null,Object? avatar = freezed,}) {
  return _then(_self.copyWith(
nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatInterlocutorModel].
extension ChatInterlocutorModelPatterns on ChatInterlocutorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatInterlocutorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatInterlocutorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatInterlocutorModel value)  $default,){
final _that = this;
switch (_that) {
case _ChatInterlocutorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatInterlocutorModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChatInterlocutorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'nickname')  String nickname, @JsonKey(name: 'name')  String name, @JsonKey(name: 'avatar')  String? avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatInterlocutorModel() when $default != null:
return $default(_that.nickname,_that.name,_that.avatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'nickname')  String nickname, @JsonKey(name: 'name')  String name, @JsonKey(name: 'avatar')  String? avatar)  $default,) {final _that = this;
switch (_that) {
case _ChatInterlocutorModel():
return $default(_that.nickname,_that.name,_that.avatar);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'nickname')  String nickname, @JsonKey(name: 'name')  String name, @JsonKey(name: 'avatar')  String? avatar)?  $default,) {final _that = this;
switch (_that) {
case _ChatInterlocutorModel() when $default != null:
return $default(_that.nickname,_that.name,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatInterlocutorModel implements ChatInterlocutorModel {
  const _ChatInterlocutorModel({@JsonKey(name: 'nickname') required this.nickname, @JsonKey(name: 'name') required this.name, @JsonKey(name: 'avatar') this.avatar});
  factory _ChatInterlocutorModel.fromJson(Map<String, dynamic> json) => _$ChatInterlocutorModelFromJson(json);

@override@JsonKey(name: 'nickname') final  String nickname;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'avatar') final  String? avatar;

/// Create a copy of ChatInterlocutorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatInterlocutorModelCopyWith<_ChatInterlocutorModel> get copyWith => __$ChatInterlocutorModelCopyWithImpl<_ChatInterlocutorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatInterlocutorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatInterlocutorModel&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nickname,name,avatar);

@override
String toString() {
  return 'ChatInterlocutorModel(nickname: $nickname, name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$ChatInterlocutorModelCopyWith<$Res> implements $ChatInterlocutorModelCopyWith<$Res> {
  factory _$ChatInterlocutorModelCopyWith(_ChatInterlocutorModel value, $Res Function(_ChatInterlocutorModel) _then) = __$ChatInterlocutorModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'nickname') String nickname,@JsonKey(name: 'name') String name,@JsonKey(name: 'avatar') String? avatar
});




}
/// @nodoc
class __$ChatInterlocutorModelCopyWithImpl<$Res>
    implements _$ChatInterlocutorModelCopyWith<$Res> {
  __$ChatInterlocutorModelCopyWithImpl(this._self, this._then);

  final _ChatInterlocutorModel _self;
  final $Res Function(_ChatInterlocutorModel) _then;

/// Create a copy of ChatInterlocutorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nickname = null,Object? name = null,Object? avatar = freezed,}) {
  return _then(_ChatInterlocutorModel(
nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
