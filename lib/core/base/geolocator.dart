import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AppGeolocator {
  static LatLng userLocation = LatLng(40.409264, 49.867092);
  static Future<Position> determinePosition() async {
    late final Position position;
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw 'Location permissions are denied';
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw 'Location permissions are permanently denied, we cannot request permissions.';
    }

    position = await Geolocator.getCurrentPosition();
    userLocation = LatLng(position.latitude, position.longitude);
    return position;
  }
}
