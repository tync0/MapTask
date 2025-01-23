import 'package:freezed_annotation/freezed_annotation.dart';
part 'response_location.freezed.dart';
part 'response_location.g.dart';

@freezed
class ResponseLocation with _$ResponseLocation {
  const factory ResponseLocation({
    required double latitude,
    required double longitude,
  }) = _ResponseLocation;

  factory ResponseLocation.fromJson(Map<String, Object?> json) =>
      _$ResponseLocationFromJson(json);
}
