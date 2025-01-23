// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseLocation _$ResponseLocationFromJson(Map<String, dynamic> json) {
  return _ResponseLocation.fromJson(json);
}

/// @nodoc
mixin _$ResponseLocation {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  /// Serializes this ResponseLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseLocationCopyWith<ResponseLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseLocationCopyWith<$Res> {
  factory $ResponseLocationCopyWith(
          ResponseLocation value, $Res Function(ResponseLocation) then) =
      _$ResponseLocationCopyWithImpl<$Res, ResponseLocation>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$ResponseLocationCopyWithImpl<$Res, $Val extends ResponseLocation>
    implements $ResponseLocationCopyWith<$Res> {
  _$ResponseLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseLocationImplCopyWith<$Res>
    implements $ResponseLocationCopyWith<$Res> {
  factory _$$ResponseLocationImplCopyWith(_$ResponseLocationImpl value,
          $Res Function(_$ResponseLocationImpl) then) =
      __$$ResponseLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$ResponseLocationImplCopyWithImpl<$Res>
    extends _$ResponseLocationCopyWithImpl<$Res, _$ResponseLocationImpl>
    implements _$$ResponseLocationImplCopyWith<$Res> {
  __$$ResponseLocationImplCopyWithImpl(_$ResponseLocationImpl _value,
      $Res Function(_$ResponseLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$ResponseLocationImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseLocationImpl implements _ResponseLocation {
  const _$ResponseLocationImpl(
      {required this.latitude, required this.longitude});

  factory _$ResponseLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseLocationImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'ResponseLocation(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseLocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  /// Create a copy of ResponseLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseLocationImplCopyWith<_$ResponseLocationImpl> get copyWith =>
      __$$ResponseLocationImplCopyWithImpl<_$ResponseLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseLocationImplToJson(
      this,
    );
  }
}

abstract class _ResponseLocation implements ResponseLocation {
  const factory _ResponseLocation(
      {required final double latitude,
      required final double longitude}) = _$ResponseLocationImpl;

  factory _ResponseLocation.fromJson(Map<String, dynamic> json) =
      _$ResponseLocationImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;

  /// Create a copy of ResponseLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseLocationImplCopyWith<_$ResponseLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
