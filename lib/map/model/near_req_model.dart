import 'package:freezed_annotation/freezed_annotation.dart';
part 'near_req_model.freezed.dart';
part 'near_req_model.g.dart';

@freezed
class NearbyRequestModel with _$NearbyRequestModel {
  const factory NearbyRequestModel({
    required double lat,
    required double long,
    required String type,
  }) = _NearbyRequestModel;

  factory NearbyRequestModel.fromJson(Map<String, Object?> json) =>
      _$NearbyRequestModelFromJson(json);
}
