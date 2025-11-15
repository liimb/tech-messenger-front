// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditorEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EditorEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditorEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EditorEvent()';
}


}

/// @nodoc
class $EditorEventCopyWith<$Res>  {
$EditorEventCopyWith(EditorEvent _, $Res Function(EditorEvent) __);
}


/// Adds pattern-matching-related methods to [EditorEvent].
extension EditorEventPatterns on EditorEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NameChangedEvent value)?  nameChanged,TResult Function( DescriptionChangedEvent value)?  descriptionChanged,TResult Function( AvatarChangedEvent value)?  avatarChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NameChangedEvent() when nameChanged != null:
return nameChanged(_that);case DescriptionChangedEvent() when descriptionChanged != null:
return descriptionChanged(_that);case AvatarChangedEvent() when avatarChanged != null:
return avatarChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NameChangedEvent value)  nameChanged,required TResult Function( DescriptionChangedEvent value)  descriptionChanged,required TResult Function( AvatarChangedEvent value)  avatarChanged,}){
final _that = this;
switch (_that) {
case NameChangedEvent():
return nameChanged(_that);case DescriptionChangedEvent():
return descriptionChanged(_that);case AvatarChangedEvent():
return avatarChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NameChangedEvent value)?  nameChanged,TResult? Function( DescriptionChangedEvent value)?  descriptionChanged,TResult? Function( AvatarChangedEvent value)?  avatarChanged,}){
final _that = this;
switch (_that) {
case NameChangedEvent() when nameChanged != null:
return nameChanged(_that);case DescriptionChangedEvent() when descriptionChanged != null:
return descriptionChanged(_that);case AvatarChangedEvent() when avatarChanged != null:
return avatarChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String newName)?  nameChanged,TResult Function( String newDescription)?  descriptionChanged,TResult Function( String newAvatar)?  avatarChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NameChangedEvent() when nameChanged != null:
return nameChanged(_that.newName);case DescriptionChangedEvent() when descriptionChanged != null:
return descriptionChanged(_that.newDescription);case AvatarChangedEvent() when avatarChanged != null:
return avatarChanged(_that.newAvatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String newName)  nameChanged,required TResult Function( String newDescription)  descriptionChanged,required TResult Function( String newAvatar)  avatarChanged,}) {final _that = this;
switch (_that) {
case NameChangedEvent():
return nameChanged(_that.newName);case DescriptionChangedEvent():
return descriptionChanged(_that.newDescription);case AvatarChangedEvent():
return avatarChanged(_that.newAvatar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String newName)?  nameChanged,TResult? Function( String newDescription)?  descriptionChanged,TResult? Function( String newAvatar)?  avatarChanged,}) {final _that = this;
switch (_that) {
case NameChangedEvent() when nameChanged != null:
return nameChanged(_that.newName);case DescriptionChangedEvent() when descriptionChanged != null:
return descriptionChanged(_that.newDescription);case AvatarChangedEvent() when avatarChanged != null:
return avatarChanged(_that.newAvatar);case _:
  return null;

}
}

}

/// @nodoc


class NameChangedEvent with DiagnosticableTreeMixin implements EditorEvent {
  const NameChangedEvent(this.newName);
  

 final  String newName;

/// Create a copy of EditorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameChangedEventCopyWith<NameChangedEvent> get copyWith => _$NameChangedEventCopyWithImpl<NameChangedEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EditorEvent.nameChanged'))
    ..add(DiagnosticsProperty('newName', newName));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NameChangedEvent&&(identical(other.newName, newName) || other.newName == newName));
}


@override
int get hashCode => Object.hash(runtimeType,newName);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EditorEvent.nameChanged(newName: $newName)';
}


}

/// @nodoc
abstract mixin class $NameChangedEventCopyWith<$Res> implements $EditorEventCopyWith<$Res> {
  factory $NameChangedEventCopyWith(NameChangedEvent value, $Res Function(NameChangedEvent) _then) = _$NameChangedEventCopyWithImpl;
@useResult
$Res call({
 String newName
});




}
/// @nodoc
class _$NameChangedEventCopyWithImpl<$Res>
    implements $NameChangedEventCopyWith<$Res> {
  _$NameChangedEventCopyWithImpl(this._self, this._then);

  final NameChangedEvent _self;
  final $Res Function(NameChangedEvent) _then;

/// Create a copy of EditorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? newName = null,}) {
  return _then(NameChangedEvent(
null == newName ? _self.newName : newName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DescriptionChangedEvent with DiagnosticableTreeMixin implements EditorEvent {
  const DescriptionChangedEvent(this.newDescription);
  

 final  String newDescription;

/// Create a copy of EditorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DescriptionChangedEventCopyWith<DescriptionChangedEvent> get copyWith => _$DescriptionChangedEventCopyWithImpl<DescriptionChangedEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EditorEvent.descriptionChanged'))
    ..add(DiagnosticsProperty('newDescription', newDescription));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DescriptionChangedEvent&&(identical(other.newDescription, newDescription) || other.newDescription == newDescription));
}


@override
int get hashCode => Object.hash(runtimeType,newDescription);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EditorEvent.descriptionChanged(newDescription: $newDescription)';
}


}

/// @nodoc
abstract mixin class $DescriptionChangedEventCopyWith<$Res> implements $EditorEventCopyWith<$Res> {
  factory $DescriptionChangedEventCopyWith(DescriptionChangedEvent value, $Res Function(DescriptionChangedEvent) _then) = _$DescriptionChangedEventCopyWithImpl;
@useResult
$Res call({
 String newDescription
});




}
/// @nodoc
class _$DescriptionChangedEventCopyWithImpl<$Res>
    implements $DescriptionChangedEventCopyWith<$Res> {
  _$DescriptionChangedEventCopyWithImpl(this._self, this._then);

  final DescriptionChangedEvent _self;
  final $Res Function(DescriptionChangedEvent) _then;

/// Create a copy of EditorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? newDescription = null,}) {
  return _then(DescriptionChangedEvent(
null == newDescription ? _self.newDescription : newDescription // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AvatarChangedEvent with DiagnosticableTreeMixin implements EditorEvent {
  const AvatarChangedEvent(this.newAvatar);
  

 final  String newAvatar;

/// Create a copy of EditorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvatarChangedEventCopyWith<AvatarChangedEvent> get copyWith => _$AvatarChangedEventCopyWithImpl<AvatarChangedEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EditorEvent.avatarChanged'))
    ..add(DiagnosticsProperty('newAvatar', newAvatar));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvatarChangedEvent&&(identical(other.newAvatar, newAvatar) || other.newAvatar == newAvatar));
}


@override
int get hashCode => Object.hash(runtimeType,newAvatar);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EditorEvent.avatarChanged(newAvatar: $newAvatar)';
}


}

/// @nodoc
abstract mixin class $AvatarChangedEventCopyWith<$Res> implements $EditorEventCopyWith<$Res> {
  factory $AvatarChangedEventCopyWith(AvatarChangedEvent value, $Res Function(AvatarChangedEvent) _then) = _$AvatarChangedEventCopyWithImpl;
@useResult
$Res call({
 String newAvatar
});




}
/// @nodoc
class _$AvatarChangedEventCopyWithImpl<$Res>
    implements $AvatarChangedEventCopyWith<$Res> {
  _$AvatarChangedEventCopyWithImpl(this._self, this._then);

  final AvatarChangedEvent _self;
  final $Res Function(AvatarChangedEvent) _then;

/// Create a copy of EditorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? newAvatar = null,}) {
  return _then(AvatarChangedEvent(
null == newAvatar ? _self.newAvatar : newAvatar // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$EditorState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EditorState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EditorState()';
}


}

/// @nodoc
class $EditorStateCopyWith<$Res>  {
$EditorStateCopyWith(EditorState _, $Res Function(EditorState) __);
}


/// Adds pattern-matching-related methods to [EditorState].
extension EditorStatePatterns on EditorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EditorInitialState value)?  initial,TResult Function( EditorLoadingState value)?  loading,TResult Function( EditorSuccessState value)?  success,TResult Function( EditorErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EditorInitialState() when initial != null:
return initial(_that);case EditorLoadingState() when loading != null:
return loading(_that);case EditorSuccessState() when success != null:
return success(_that);case EditorErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EditorInitialState value)  initial,required TResult Function( EditorLoadingState value)  loading,required TResult Function( EditorSuccessState value)  success,required TResult Function( EditorErrorState value)  error,}){
final _that = this;
switch (_that) {
case EditorInitialState():
return initial(_that);case EditorLoadingState():
return loading(_that);case EditorSuccessState():
return success(_that);case EditorErrorState():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EditorInitialState value)?  initial,TResult? Function( EditorLoadingState value)?  loading,TResult? Function( EditorSuccessState value)?  success,TResult? Function( EditorErrorState value)?  error,}){
final _that = this;
switch (_that) {
case EditorInitialState() when initial != null:
return initial(_that);case EditorLoadingState() when loading != null:
return loading(_that);case EditorSuccessState() when success != null:
return success(_that);case EditorErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EditorInitialState() when initial != null:
return initial();case EditorLoadingState() when loading != null:
return loading();case EditorSuccessState() when success != null:
return success();case EditorErrorState() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case EditorInitialState():
return initial();case EditorLoadingState():
return loading();case EditorSuccessState():
return success();case EditorErrorState():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case EditorInitialState() when initial != null:
return initial();case EditorLoadingState() when loading != null:
return loading();case EditorSuccessState() when success != null:
return success();case EditorErrorState() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class EditorInitialState with DiagnosticableTreeMixin implements EditorState {
  const EditorInitialState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EditorState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditorInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EditorState.initial()';
}


}




/// @nodoc


class EditorLoadingState with DiagnosticableTreeMixin implements EditorState {
  const EditorLoadingState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EditorState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditorLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EditorState.loading()';
}


}




/// @nodoc


class EditorSuccessState with DiagnosticableTreeMixin implements EditorState {
  const EditorSuccessState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EditorState.success'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditorSuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EditorState.success()';
}


}




/// @nodoc


class EditorErrorState with DiagnosticableTreeMixin implements EditorState {
  const EditorErrorState(this.message);
  

 final  String message;

/// Create a copy of EditorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditorErrorStateCopyWith<EditorErrorState> get copyWith => _$EditorErrorStateCopyWithImpl<EditorErrorState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EditorState.error'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditorErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EditorState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $EditorErrorStateCopyWith<$Res> implements $EditorStateCopyWith<$Res> {
  factory $EditorErrorStateCopyWith(EditorErrorState value, $Res Function(EditorErrorState) _then) = _$EditorErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$EditorErrorStateCopyWithImpl<$Res>
    implements $EditorErrorStateCopyWith<$Res> {
  _$EditorErrorStateCopyWithImpl(this._self, this._then);

  final EditorErrorState _self;
  final $Res Function(EditorErrorState) _then;

/// Create a copy of EditorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(EditorErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
