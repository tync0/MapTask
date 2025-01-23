import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:prodata/src/core/constant/app_const.dart';
import 'package:prodata/src/map/model/near_req_model.dart';

final class MapService {
  final Dio _dio;
  MapService(this._dio);

  Future<Response> getNearbyPlaces(NearbyRequestModel model) async {
    final Response response = await _dio.post(
      AppConst.nearByPlaceEP,
      data: {
        "includedTypes": [model.type.toLowerCase()],
        "maxResultCount": 20,
        "locationRestriction": {
          "circle": {
            "center": {"latitude": model.lat, "longitude": model.long},
            "radius": 3000,
          }
        }
      },
    );
    return response;
  }

  Future<Response> getPlaceByQuery(String query) async {
    final Response response = await _dio.post(
      AppConst.searchByQueryEP,
      data: {"textQuery": query},
    );
    return response;
  }

  Future<Response> getDirection(LatLng origin, LatLng destination) async {
    final Response response = await _dio.get(
      AppConst.getDirectionEP,
      queryParameters: {
        "origin": '${origin.latitude},${origin.longitude}',
        "destination": '${destination.latitude},${destination.longitude}',
        'key': AppConst.mapApiKey,
      },
    );
    return response;
  }
}
