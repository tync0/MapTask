import 'package:go_router/go_router.dart';
import 'package:prodata/src/core/base/extension.dart';
import 'package:prodata/export.dart';

class DetailSheet extends StatelessWidget {
  final Marker _marker;
  const DetailSheet(this._marker, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.mediaQueryWidth,
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _marker.infoWindow.title ?? 'Unknown Location',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              minimumSize: Size(context.mediaQueryWidth, 48),
            ),
            onPressed: () {
              context.read<MapBloc>().add(
                    MapEvent.getDirection(
                      LatLng(
                        AppGeolocator.userLocation.latitude,
                        AppGeolocator.userLocation.longitude,
                      ),
                      _marker.position,
                    ),
                  );
              context.pop();
            },
            child: const Text(
              'Go to destination',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
