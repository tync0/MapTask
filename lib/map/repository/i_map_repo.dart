import 'package:prodata/core/base/exception_handler.dart';
import 'package:prodata/export.dart';
import 'package:prodata/map/model/near_req_model.dart';
import 'package:prodata/map/model/response/response_model.dart';

final class IMapRepo implements MapRepo {
  final MapService _service;
  final AppDatabase _db;
  IMapRepo(this._service, this._db);

  @override
  Future<List<ResponseModel>> getNearPlaces(NearbyRequestModel model) async {
    try {
      final response = await _service.getNearbyPlaces(model);
      return (response.data['places'] as List)
          .map((e) => ResponseModel.fromJson(e))
          .toList();
    } on DioException catch (e) {
      throw DioExceptionHandler.handleException(e);
    }
  }

  @override
  Future<List<ResponseModel>> getPlaceByQuery(String query) async {
    try {
      final response = await _service.getPlaceByQuery(query);
      return (response.data['places'] as List)
          .map((e) => ResponseModel.fromJson(e))
          .toList();
    } on DioException catch (e) {
      throw DioExceptionHandler.handleException(e);
    }
  }

  @override
  Future<List<LatLng>> getDirection(LatLng origin, LatLng destination) async {
    try {
      final response = await _service.getDirection(origin, destination);
      final String encodedPolyline =
          response.data['routes'][0]['overview_polyline']['points'];
      return decodePolyline(encodedPolyline);
    } on DioException catch (e) {
      throw DioExceptionHandler.handleException(e);
    }
  }
}

List<LatLng> decodePolyline(String encoded) {
  List<LatLng> polyline = [];
  int index = 0, len = encoded.length;
  int lat = 0, lng = 0;

  while (index < len) {
    int shift = 0, result = 0;
    int byte;

    do {
      byte = encoded.codeUnitAt(index++) - 63;
      result |= (byte & 0x1F) << shift;
      shift += 5;
    } while (byte >= 0x20);

    int deltaLat = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
    lat += deltaLat;

    shift = 0;
    result = 0;

    do {
      byte = encoded.codeUnitAt(index++) - 63;
      result |= (byte & 0x1F) << shift;
      shift += 5;
    } while (byte >= 0x20);

    int deltaLng = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
    lng += deltaLng;

    polyline.add(LatLng(lat / 1E5, lng / 1E5));
  }

  return polyline;
}
