part of 'map_bloc.dart';

@freezed
class MapEvent with _$MapEvent {
  const factory MapEvent.getLocation() = _getLocation;
  const factory MapEvent.getPlaces(NearbyRequestModel model) = _getPlaces;
  const factory MapEvent.getPlaceByQuery(String query) = _getPlaceByQuery;
  const factory MapEvent.getDirection(LatLng origin, LatLng destination) =
      _getDirection;
  const factory MapEvent.reset() = _reset;
  const factory MapEvent.resetDirection() = _resetDirection;
}
