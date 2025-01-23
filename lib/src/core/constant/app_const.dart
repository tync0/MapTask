abstract final class AppConst {
  static const String nearByPlaceEP =
      'https://places.googleapis.com/v1/places:searchNearby';
  static const String searchByQueryEP =
      'https://places.googleapis.com/v1/places:searchText';
  static const String getDirectionEP =
      'https://maps.googleapis.com/maps/api/directions/json';
  static const String mapApiKey = 'AIzaSyAUS3-okFrVcOHdTw1tC7GqN-RVwO__lzA';
  static const String mapFieldMask =
      'places.displayName,places.formattedAddress,places.location,places.id';
}
