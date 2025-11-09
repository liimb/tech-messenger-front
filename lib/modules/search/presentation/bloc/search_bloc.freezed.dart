// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SearchEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SearchEvent()';
}


}

/// @nodoc
class $SearchEventCopyWith<$Res>  {
$SearchEventCopyWith(SearchEvent _, $Res Function(SearchEvent) __);
}


/// Adds pattern-matching-related methods to [SearchEvent].
extension SearchEventPatterns on SearchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchUsersEvent value)?  searchUsers,TResult Function( SearchResetEvent value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchUsersEvent() when searchUsers != null:
return searchUsers(_that);case SearchResetEvent() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchUsersEvent value)  searchUsers,required TResult Function( SearchResetEvent value)  reset,}){
final _that = this;
switch (_that) {
case SearchUsersEvent():
return searchUsers(_that);case SearchResetEvent():
return reset(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchUsersEvent value)?  searchUsers,TResult? Function( SearchResetEvent value)?  reset,}){
final _that = this;
switch (_that) {
case SearchUsersEvent() when searchUsers != null:
return searchUsers(_that);case SearchResetEvent() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name)?  searchUsers,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchUsersEvent() when searchUsers != null:
return searchUsers(_that.name);case SearchResetEvent() when reset != null:
return reset();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name)  searchUsers,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case SearchUsersEvent():
return searchUsers(_that.name);case SearchResetEvent():
return reset();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name)?  searchUsers,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case SearchUsersEvent() when searchUsers != null:
return searchUsers(_that.name);case SearchResetEvent() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class SearchUsersEvent with DiagnosticableTreeMixin implements SearchEvent {
  const SearchUsersEvent(this.name);
  

 final  String name;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchUsersEventCopyWith<SearchUsersEvent> get copyWith => _$SearchUsersEventCopyWithImpl<SearchUsersEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SearchEvent.searchUsers'))
    ..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchUsersEvent&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SearchEvent.searchUsers(name: $name)';
}


}

/// @nodoc
abstract mixin class $SearchUsersEventCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchUsersEventCopyWith(SearchUsersEvent value, $Res Function(SearchUsersEvent) _then) = _$SearchUsersEventCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$SearchUsersEventCopyWithImpl<$Res>
    implements $SearchUsersEventCopyWith<$Res> {
  _$SearchUsersEventCopyWithImpl(this._self, this._then);

  final SearchUsersEvent _self;
  final $Res Function(SearchUsersEvent) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(SearchUsersEvent(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SearchResetEvent with DiagnosticableTreeMixin implements SearchEvent {
  const SearchResetEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SearchEvent.reset'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResetEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SearchEvent.reset()';
}


}




/// @nodoc
mixin _$SearchState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SearchState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SearchState()';
}


}

/// @nodoc
class $SearchStateCopyWith<$Res>  {
$SearchStateCopyWith(SearchState _, $Res Function(SearchState) __);
}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchInitialState value)?  initial,TResult Function( SearchLoadingState value)?  loading,TResult Function( SearchLoadedState value)?  loaded,TResult Function( SearchFailureState value)?  failure,TResult Function( SearchEmptyListState value)?  emptyList,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchInitialState() when initial != null:
return initial(_that);case SearchLoadingState() when loading != null:
return loading(_that);case SearchLoadedState() when loaded != null:
return loaded(_that);case SearchFailureState() when failure != null:
return failure(_that);case SearchEmptyListState() when emptyList != null:
return emptyList(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchInitialState value)  initial,required TResult Function( SearchLoadingState value)  loading,required TResult Function( SearchLoadedState value)  loaded,required TResult Function( SearchFailureState value)  failure,required TResult Function( SearchEmptyListState value)  emptyList,}){
final _that = this;
switch (_that) {
case SearchInitialState():
return initial(_that);case SearchLoadingState():
return loading(_that);case SearchLoadedState():
return loaded(_that);case SearchFailureState():
return failure(_that);case SearchEmptyListState():
return emptyList(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchInitialState value)?  initial,TResult? Function( SearchLoadingState value)?  loading,TResult? Function( SearchLoadedState value)?  loaded,TResult? Function( SearchFailureState value)?  failure,TResult? Function( SearchEmptyListState value)?  emptyList,}){
final _that = this;
switch (_that) {
case SearchInitialState() when initial != null:
return initial(_that);case SearchLoadingState() when loading != null:
return loading(_that);case SearchLoadedState() when loaded != null:
return loaded(_that);case SearchFailureState() when failure != null:
return failure(_that);case SearchEmptyListState() when emptyList != null:
return emptyList(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<UserModel> users)?  loaded,TResult Function()?  failure,TResult Function()?  emptyList,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchInitialState() when initial != null:
return initial();case SearchLoadingState() when loading != null:
return loading();case SearchLoadedState() when loaded != null:
return loaded(_that.users);case SearchFailureState() when failure != null:
return failure();case SearchEmptyListState() when emptyList != null:
return emptyList();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<UserModel> users)  loaded,required TResult Function()  failure,required TResult Function()  emptyList,}) {final _that = this;
switch (_that) {
case SearchInitialState():
return initial();case SearchLoadingState():
return loading();case SearchLoadedState():
return loaded(_that.users);case SearchFailureState():
return failure();case SearchEmptyListState():
return emptyList();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<UserModel> users)?  loaded,TResult? Function()?  failure,TResult? Function()?  emptyList,}) {final _that = this;
switch (_that) {
case SearchInitialState() when initial != null:
return initial();case SearchLoadingState() when loading != null:
return loading();case SearchLoadedState() when loaded != null:
return loaded(_that.users);case SearchFailureState() when failure != null:
return failure();case SearchEmptyListState() when emptyList != null:
return emptyList();case _:
  return null;

}
}

}

/// @nodoc


class SearchInitialState with DiagnosticableTreeMixin implements SearchState {
  const SearchInitialState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SearchState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SearchState.initial()';
}


}




/// @nodoc


class SearchLoadingState with DiagnosticableTreeMixin implements SearchState {
  const SearchLoadingState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SearchState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SearchState.loading()';
}


}




/// @nodoc


class SearchLoadedState with DiagnosticableTreeMixin implements SearchState {
  const SearchLoadedState(final  List<UserModel> users): _users = users;
  

 final  List<UserModel> _users;
 List<UserModel> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}


/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchLoadedStateCopyWith<SearchLoadedState> get copyWith => _$SearchLoadedStateCopyWithImpl<SearchLoadedState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SearchState.loaded'))
    ..add(DiagnosticsProperty('users', users));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchLoadedState&&const DeepCollectionEquality().equals(other._users, _users));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SearchState.loaded(users: $users)';
}


}

/// @nodoc
abstract mixin class $SearchLoadedStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory $SearchLoadedStateCopyWith(SearchLoadedState value, $Res Function(SearchLoadedState) _then) = _$SearchLoadedStateCopyWithImpl;
@useResult
$Res call({
 List<UserModel> users
});




}
/// @nodoc
class _$SearchLoadedStateCopyWithImpl<$Res>
    implements $SearchLoadedStateCopyWith<$Res> {
  _$SearchLoadedStateCopyWithImpl(this._self, this._then);

  final SearchLoadedState _self;
  final $Res Function(SearchLoadedState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? users = null,}) {
  return _then(SearchLoadedState(
null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserModel>,
  ));
}


}

/// @nodoc


class SearchFailureState with DiagnosticableTreeMixin implements SearchState {
  const SearchFailureState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SearchState.failure'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchFailureState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SearchState.failure()';
}


}




/// @nodoc


class SearchEmptyListState with DiagnosticableTreeMixin implements SearchState {
  const SearchEmptyListState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SearchState.emptyList'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEmptyListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SearchState.emptyList()';
}


}




// dart format on
