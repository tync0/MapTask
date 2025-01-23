// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseAddress _$ResponseAddressFromJson(Map<String, dynamic> json) {
  return _ResponseAddress.fromJson(json);
}

/// @nodoc
mixin _$ResponseAddress {
  String get text => throw _privateConstructorUsedError;

  /// Serializes this ResponseAddress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseAddressCopyWith<ResponseAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseAddressCopyWith<$Res> {
  factory $ResponseAddressCopyWith(
          ResponseAddress value, $Res Function(ResponseAddress) then) =
      _$ResponseAddressCopyWithImpl<$Res, ResponseAddress>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$ResponseAddressCopyWithImpl<$Res, $Val extends ResponseAddress>
    implements $ResponseAddressCopyWith<$Res> {
  _$ResponseAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseAddressImplCopyWith<$Res>
    implements $ResponseAddressCopyWith<$Res> {
  factory _$$ResponseAddressImplCopyWith(_$ResponseAddressImpl value,
          $Res Function(_$ResponseAddressImpl) then) =
      __$$ResponseAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$ResponseAddressImplCopyWithImpl<$Res>
    extends _$ResponseAddressCopyWithImpl<$Res, _$ResponseAddressImpl>
    implements _$$ResponseAddressImplCopyWith<$Res> {
  __$$ResponseAddressImplCopyWithImpl(
      _$ResponseAddressImpl _value, $Res Function(_$ResponseAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$ResponseAddressImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseAddressImpl implements _ResponseAddress {
  const _$ResponseAddressImpl({required this.text});

  factory _$ResponseAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseAddressImplFromJson(json);

  @override
  final String text;

  @override
  String toString() {
    return 'ResponseAddress(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseAddressImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of ResponseAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseAddressImplCopyWith<_$ResponseAddressImpl> get copyWith =>
      __$$ResponseAddressImplCopyWithImpl<_$ResponseAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseAddressImplToJson(
      this,
    );
  }
}

abstract class _ResponseAddress implements ResponseAddress {
  const factory _ResponseAddress({required final String text}) =
      _$ResponseAddressImpl;

  factory _ResponseAddress.fromJson(Map<String, dynamic> json) =
      _$ResponseAddressImpl.fromJson;

  @override
  String get text;

  /// Create a copy of ResponseAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseAddressImplCopyWith<_$ResponseAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
