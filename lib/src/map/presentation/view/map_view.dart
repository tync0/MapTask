import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:prodata/src/core/base/geolocator.dart';
import 'package:prodata/src/map/model/near_req_model.dart';
import 'package:prodata/src/map/presentation/bloc/map_bloc.dart';
import 'package:prodata/src/map/presentation/widget/detail_sheet.dart';
import 'package:prodata/src/map/presentation/widget/search_field.dart';
part 'map_mixin.dart';

class AppMapView extends StatefulWidget {
  const AppMapView({super.key});

  @override
  State<AppMapView> createState() => _AppMapViewState();
}

class _AppMapViewState extends State<AppMapView> with MapMixin {
  late final CameraPosition _kGooglePlex;
  late final TextEditingController _controller;
  late final MapBloc _mapBloc;
  @override
  void initState() {
    _controller = TextEditingController();
    _mapBloc = BlocProvider.of<MapBloc>(context);
    _kGooglePlex = _mapBloc.cameraPosition;
    _mapBloc.add(MapEvent.getLocation());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: _goToUserLocation,
        backgroundColor: Colors.white,
        child: const Icon(Icons.my_location),
      ),
      body: BlocBuilder<MapBloc, MapState>(
        builder: (context, state) {
          return SafeArea(
            child: Stack(
              children: [
                GoogleMap(
                  myLocationEnabled: true,
                  zoomControlsEnabled: false,
                  initialCameraPosition: _kGooglePlex,
                  polylines: _mapBloc.polylines,
                  markers: _mapBloc.markers.map(
                    (marker) {
                      return marker.copyWith(
                        onTapParam: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return DetailSheet(marker);
                            },
                          );
                        },
                      );
                    },
                  ).toSet(),
                  onMapCreated: (controller) {
                    _mapBloc.mapController = controller;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      spacing: 12,
                      children: [
                        SearchField(
                          hintText: 'Search...',
                          textEditingController: _controller,
                          onEditingComplete: () {
                            context.read<MapBloc>().add(
                                  MapEvent.getPlaceByQuery(_controller.text),
                                );
                            FocusScope.of(context).unfocus();
                          },
                        ),
                        state.maybeWhen(
                          orElse: () => const SizedBox.shrink(),
                          directionSuccess: () => ElevatedButton(
                            onPressed: () {
                              _mapBloc.add(MapEvent.resetDirection());
                            },
                            child: const Text('Reset destionation'),
                          ),
                        ),
                        ValueListenableBuilder(
                          valueListenable: selectedLabel,
                          builder: (context, value, child) => SizedBox(
                            height: 40,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                final String label = labels[index];
                                return InkWell(
                                  onTap: () {
                                    if (value == label) {
                                      _mapBloc.add(MapEvent.reset());
                                      selectedLabel.value = '';
                                      return;
                                    }
                                    selectedLabel.value = label;
                                    getNearPlaces(label);
                                  },
                                  child: Chip(
                                    label: Text(label),
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(
                                        color: label == value
                                            ? Colors.blue
                                            : Colors.grey,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  const SizedBox(width: 10),
                              itemCount: labels.length,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _goToUserLocation() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        throw 'Location services are disabled';
      }

      Position position = await Geolocator.getCurrentPosition();
      _mapBloc.mapController.animateCamera(
        CameraUpdate.newLatLngZoom(
          LatLng(position.latitude, position.longitude),
          15,
        ),
      );
    } catch (e) {
      throw 'Can\'t calculate user\'s location';
    }
  }
}
