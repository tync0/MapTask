import 'package:freezed_annotation/freezed_annotation.dart';
part 'response_address.freezed.dart';
part 'response_address.g.dart';

@freezed
class ResponseAddress with _$ResponseAddress {
  const factory ResponseAddress({
    required String text,
  }) = _ResponseAddress;

  factory ResponseAddress.fromJson(Map<String, Object?> json) =>
      _$ResponseAddressFromJson(json);
}
