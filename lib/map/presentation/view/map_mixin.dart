part of 'map_view.dart';

mixin MapMixin on State<AppMapView> {
  final List<String> labels = ['Restaurant', 'Cafe', 'Park', 'Store'];
  final ValueNotifier<String> selectedLabel = ValueNotifier('');
  void getNearPlaces(String type) {
    context.read<MapBloc>().add(
          MapEvent.getPlaces(
            NearbyRequestModel(
              lat: AppGeolocator.userLocation.latitude,
              long: AppGeolocator.userLocation.longitude,
              type: type,
            ),
          ),
        );
  }
}
