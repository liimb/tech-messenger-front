// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jwt_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

JwtModel _$JwtModelFromJson(Map<String, dynamic> json) {
  return _JwtModel.fromJson(json);
}

/// @nodoc
mixin _$JwtModel {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this JwtModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JwtModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JwtModelCopyWith<JwtModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JwtModelCopyWith<$Res> {
  factory $JwtModelCopyWith(JwtModel value, $Res Function(JwtModel) then) =
      _$JwtModelCopyWithImpl<$Res, JwtModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'access_token') String accessToken,
    @JsonKey(name: 'refresh_token') String refreshToken,
  });
}

/// @nodoc
class _$JwtModelCopyWithImpl<$Res, $Val extends JwtModel>
    implements $JwtModelCopyWith<$Res> {
  _$JwtModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JwtModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? accessToken = null, Object? refreshToken = null}) {
    return _then(
      _value.copyWith(
            accessToken: null == accessToken
                ? _value.accessToken
                : accessToken // ignore: cast_nullable_to_non_nullable
                      as String,
            refreshToken: null == refreshToken
                ? _value.refreshToken
                : refreshToken // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$JwtModelImplCopyWith<$Res>
    implements $JwtModelCopyWith<$Res> {
  factory _$$JwtModelImplCopyWith(
    _$JwtModelImpl value,
    $Res Function(_$JwtModelImpl) then,
  ) = __$$JwtModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'access_token') String accessToken,
    @JsonKey(name: 'refresh_token') String refreshToken,
  });
}

/// @nodoc
class __$$JwtModelImplCopyWithImpl<$Res>
    extends _$JwtModelCopyWithImpl<$Res, _$JwtModelImpl>
    implements _$$JwtModelImplCopyWith<$Res> {
  __$$JwtModelImplCopyWithImpl(
    _$JwtModelImpl _value,
    $Res Function(_$JwtModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JwtModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? accessToken = null, Object? refreshToken = null}) {
    return _then(
      _$JwtModelImpl(
        accessToken: null == accessToken
            ? _value.accessToken
            : accessToken // ignore: cast_nullable_to_non_nullable
                  as String,
        refreshToken: null == refreshToken
            ? _value.refreshToken
            : refreshToken // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$JwtModelImpl implements _JwtModel {
  const _$JwtModelImpl({
    @JsonKey(name: 'access_token') required this.accessToken,
    @JsonKey(name: 'refresh_token') required this.refreshToken,
  });

  factory _$JwtModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JwtModelImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'JwtModel(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JwtModelImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  /// Create a copy of JwtModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JwtModelImplCopyWith<_$JwtModelImpl> get copyWith =>
      __$$JwtModelImplCopyWithImpl<_$JwtModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JwtModelImplToJson(this);
  }
}

abstract class _JwtModel implements JwtModel {
  const factory _JwtModel({
    @JsonKey(name: 'access_token') required final String accessToken,
    @JsonKey(name: 'refresh_token') required final String refreshToken,
  }) = _$JwtModelImpl;

  factory _JwtModel.fromJson(Map<String, dynamic> json) =
      _$JwtModelImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  /// Create a copy of JwtModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JwtModelImplCopyWith<_$JwtModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
