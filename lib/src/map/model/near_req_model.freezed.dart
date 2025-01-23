// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'near_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NearbyRequestModel _$NearbyRequestModelFromJson(Map<String, dynamic> json) {
  return _NearbyRequestModel.fromJson(json);
}

/// @nodoc
mixin _$NearbyRequestModel {
  double get lat => throw _privateConstructorUsedError;
  double get long => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this NearbyRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NearbyRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NearbyRequestModelCopyWith<NearbyRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearbyRequestModelCopyWith<$Res> {
  factory $NearbyRequestModelCopyWith(
          NearbyRequestModel value, $Res Function(NearbyRequestModel) then) =
      _$NearbyRequestModelCopyWithImpl<$Res, NearbyRequestModel>;
  @useResult
  $Res call({double lat, double long, String type});
}

/// @nodoc
class _$NearbyRequestModelCopyWithImpl<$Res, $Val extends NearbyRequestModel>
    implements $NearbyRequestModelCopyWith<$Res> {
  _$NearbyRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NearbyRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NearbyRequestModelImplCopyWith<$Res>
    implements $NearbyRequestModelCopyWith<$Res> {
  factory _$$NearbyRequestModelImplCopyWith(_$NearbyRequestModelImpl value,
          $Res Function(_$NearbyRequestModelImpl) then) =
      __$$NearbyRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double long, String type});
}

/// @nodoc
class __$$NearbyRequestModelImplCopyWithImpl<$Res>
    extends _$NearbyRequestModelCopyWithImpl<$Res, _$NearbyRequestModelImpl>
    implements _$$NearbyRequestModelImplCopyWith<$Res> {
  __$$NearbyRequestModelImplCopyWithImpl(_$NearbyRequestModelImpl _value,
      $Res Function(_$NearbyRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NearbyRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
    Object? type = null,
  }) {
    return _then(_$NearbyRequestModelImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NearbyRequestModelImpl implements _NearbyRequestModel {
  const _$NearbyRequestModelImpl(
      {required this.lat, required this.long, required this.type});

  factory _$NearbyRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NearbyRequestModelImplFromJson(json);

  @override
  final double lat;
  @override
  final double long;
  @override
  final String type;

  @override
  String toString() {
    return 'NearbyRequestModel(lat: $lat, long: $long, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NearbyRequestModelImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, long, type);

  /// Create a copy of NearbyRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NearbyRequestModelImplCopyWith<_$NearbyRequestModelImpl> get copyWith =>
      __$$NearbyRequestModelImplCopyWithImpl<_$NearbyRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NearbyRequestModelImplToJson(
      this,
    );
  }
}

abstract class _NearbyRequestModel implements NearbyRequestModel {
  const factory _NearbyRequestModel(
      {required final double lat,
      required final double long,
      required final String type}) = _$NearbyRequestModelImpl;

  factory _NearbyRequestModel.fromJson(Map<String, dynamic> json) =
      _$NearbyRequestModelImpl.fromJson;

  @override
  double get lat;
  @override
  double get long;
  @override
  String get type;

  /// Create a copy of NearbyRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NearbyRequestModelImplCopyWith<_$NearbyRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
