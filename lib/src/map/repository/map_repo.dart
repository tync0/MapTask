import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:prodata/src/map/model/near_req_model.dart';
import 'package:prodata/src/map/model/response/response_model.dart';

abstract interface class MapRepo {
  Future<List<ResponseModel>> getNearPlaces(NearbyRequestModel model);
  Future<List<ResponseModel>> getPlaceByQuery(String query);
  Future<List<LatLng>> getDirection(LatLng origin, LatLng destination);
}
