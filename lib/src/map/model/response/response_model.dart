import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prodata/src/map/model/response/response_address.dart';
import 'package:prodata/src/map/model/response/response_location.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@freezed
class ResponseModel with _$ResponseModel {
  const factory ResponseModel({
    required String formattedAddress,
    required ResponseLocation location,
    required ResponseAddress displayName,
  }) = _ResponseModel;

  factory ResponseModel.fromJson(Map<String, Object?> json) =>
      _$ResponseModelFromJson(json);
}
