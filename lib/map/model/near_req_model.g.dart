// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'near_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NearbyRequestModelImpl _$$NearbyRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NearbyRequestModelImpl(
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$NearbyRequestModelImplToJson(
        _$NearbyRequestModelImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'long': instance.long,
      'type': instance.type,
    };
