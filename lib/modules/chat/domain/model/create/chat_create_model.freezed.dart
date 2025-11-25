// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_create_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatCreateModel {

@JsonKey(name: 'userId1') String get userIdOne;@JsonKey(name: 'userId2') String get userIdTwo;
/// Create a copy of ChatCreateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCreateModelCopyWith<ChatCreateModel> get copyWith => _$ChatCreateModelCopyWithImpl<ChatCreateModel>(this as ChatCreateModel, _$identity);

  /// Serializes this ChatCreateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatCreateModel&&(identical(other.userIdOne, userIdOne) || other.userIdOne == userIdOne)&&(identical(other.userIdTwo, userIdTwo) || other.userIdTwo == userIdTwo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userIdOne,userIdTwo);

@override
String toString() {
  return 'ChatCreateModel(userIdOne: $userIdOne, userIdTwo: $userIdTwo)';
}


}

/// @nodoc
abstract mixin class $ChatCreateModelCopyWith<$Res>  {
  factory $ChatCreateModelCopyWith(ChatCreateModel value, $Res Function(ChatCreateModel) _then) = _$ChatCreateModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'userId1') String userIdOne,@JsonKey(name: 'userId2') String userIdTwo
});




}
/// @nodoc
class _$ChatCreateModelCopyWithImpl<$Res>
    implements $ChatCreateModelCopyWith<$Res> {
  _$ChatCreateModelCopyWithImpl(this._self, this._then);

  final ChatCreateModel _self;
  final $Res Function(ChatCreateModel) _then;

/// Create a copy of ChatCreateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userIdOne = null,Object? userIdTwo = null,}) {
  return _then(_self.copyWith(
userIdOne: null == userIdOne ? _self.userIdOne : userIdOne // ignore: cast_nullable_to_non_nullable
as String,userIdTwo: null == userIdTwo ? _self.userIdTwo : userIdTwo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatCreateModel].
extension ChatCreateModelPatterns on ChatCreateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatCreateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatCreateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatCreateModel value)  $default,){
final _that = this;
switch (_that) {
case _ChatCreateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatCreateModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChatCreateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'userId1')  String userIdOne, @JsonKey(name: 'userId2')  String userIdTwo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatCreateModel() when $default != null:
return $default(_that.userIdOne,_that.userIdTwo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'userId1')  String userIdOne, @JsonKey(name: 'userId2')  String userIdTwo)  $default,) {final _that = this;
switch (_that) {
case _ChatCreateModel():
return $default(_that.userIdOne,_that.userIdTwo);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'userId1')  String userIdOne, @JsonKey(name: 'userId2')  String userIdTwo)?  $default,) {final _that = this;
switch (_that) {
case _ChatCreateModel() when $default != null:
return $default(_that.userIdOne,_that.userIdTwo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatCreateModel implements ChatCreateModel {
  const _ChatCreateModel({@JsonKey(name: 'userId1') required this.userIdOne, @JsonKey(name: 'userId2') required this.userIdTwo});
  factory _ChatCreateModel.fromJson(Map<String, dynamic> json) => _$ChatCreateModelFromJson(json);

@override@JsonKey(name: 'userId1') final  String userIdOne;
@override@JsonKey(name: 'userId2') final  String userIdTwo;

/// Create a copy of ChatCreateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatCreateModelCopyWith<_ChatCreateModel> get copyWith => __$ChatCreateModelCopyWithImpl<_ChatCreateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatCreateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatCreateModel&&(identical(other.userIdOne, userIdOne) || other.userIdOne == userIdOne)&&(identical(other.userIdTwo, userIdTwo) || other.userIdTwo == userIdTwo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userIdOne,userIdTwo);

@override
String toString() {
  return 'ChatCreateModel(userIdOne: $userIdOne, userIdTwo: $userIdTwo)';
}


}

/// @nodoc
abstract mixin class _$ChatCreateModelCopyWith<$Res> implements $ChatCreateModelCopyWith<$Res> {
  factory _$ChatCreateModelCopyWith(_ChatCreateModel value, $Res Function(_ChatCreateModel) _then) = __$ChatCreateModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'userId1') String userIdOne,@JsonKey(name: 'userId2') String userIdTwo
});




}
/// @nodoc
class __$ChatCreateModelCopyWithImpl<$Res>
    implements _$ChatCreateModelCopyWith<$Res> {
  __$ChatCreateModelCopyWithImpl(this._self, this._then);

  final _ChatCreateModel _self;
  final $Res Function(_ChatCreateModel) _then;

/// Create a copy of ChatCreateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userIdOne = null,Object? userIdTwo = null,}) {
  return _then(_ChatCreateModel(
userIdOne: null == userIdOne ? _self.userIdOne : userIdOne // ignore: cast_nullable_to_non_nullable
as String,userIdTwo: null == userIdTwo ? _self.userIdTwo : userIdTwo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
