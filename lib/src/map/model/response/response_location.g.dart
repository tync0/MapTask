// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseLocationImpl _$$ResponseLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseLocationImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$ResponseLocationImplToJson(
        _$ResponseLocationImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
