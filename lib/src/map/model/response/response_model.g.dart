// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseModelImpl _$$ResponseModelImplFromJson(Map<String, dynamic> json) =>
    _$ResponseModelImpl(
      formattedAddress: json['formattedAddress'] as String,
      location:
          ResponseLocation.fromJson(json['location'] as Map<String, dynamic>),
      displayName:
          ResponseAddress.fromJson(json['displayName'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseModelImplToJson(_$ResponseModelImpl instance) =>
    <String, dynamic>{
      'formattedAddress': instance.formattedAddress,
      'location': instance.location,
      'displayName': instance.displayName,
    };
