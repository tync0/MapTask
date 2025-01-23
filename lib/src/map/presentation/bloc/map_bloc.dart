import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:prodata/src/core/base/geolocator.dart';
import 'package:prodata/src/map/model/near_req_model.dart';
import 'package:prodata/src/map/repository/map_repo.dart';

part 'map_event.dart';
part 'map_state.dart';
part 'map_bloc.freezed.dart';

mixin MapBlocMixin {
  final Set<Polyline> polylines = {};
  Set<Marker> markers = {};
  Marker userLocation = Marker(
    markerId: MarkerId('userLocation'),
    position: LatLng(
      AppGeolocator.userLocation.latitude,
      AppGeolocator.userLocation.longitude,
    ),
    infoWindow: InfoWindow(title: 'You are here'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
  );
  CameraPosition cameraPosition = CameraPosition(
    target: LatLng(
      AppGeolocator.userLocation.latitude,
      AppGeolocator.userLocation.longitude,
    ),
    zoom: 15,
  );
  late GoogleMapController mapController;
}

class MapBloc extends Bloc<MapEvent, MapState> with MapBlocMixin {
  final MapRepo _repo;
  MapBloc(this._repo) : super(_Initial()) {
    on<MapEvent>(_onMapEvent);
  }
  Future<void> _onMapEvent(MapEvent event, Emitter<MapState> emit) async {
    switch (event) {
      case _getPlaces():
        await _onGetPlaces(event, emit);
        break;
      case _getPlaceByQuery():
        await _onGetPlaceByQuery(event, emit);
        break;
      case _getLocation():
        await _onGetLocation(event, emit);
        break;
      case _getDirection():
        polylines.clear();
        await _onGetDirection(event, emit);
        break;
      case _reset():
        await _onReset(event, emit);
        break;
      case _resetDirection():
        await _onResetDirection(event, emit);
        break;
    }
  }

  //places by category
  Future<void> _onGetPlaces(_getPlaces event, Emitter<MapState> emit) async {
    emit(_Loading());
    try {
      final data = await _repo.getNearPlaces(event.model);
      markers = data
          .map(
            (e) => Marker(
              markerId: MarkerId(e.displayName.text),
              position: LatLng(e.location.latitude, e.location.longitude),
              infoWindow: InfoWindow(title: e.displayName.text),
            ),
          )
          .toSet();
      cameraPosition = CameraPosition(
        target: LatLng(
          AppGeolocator.userLocation.latitude,
          AppGeolocator.userLocation.longitude,
        ),
        zoom: 13,
      );
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(cameraPosition),
      );
      emit(_Success());
    } catch (e) {
      emit(_Failure(e.toString()));
    }
  }

  //place by query
  Future<void> _onGetPlaceByQuery(
    _getPlaceByQuery event,
    Emitter<MapState> emit,
  ) async {
    emit(_Loading());
    try {
      final data = await _repo.getPlaceByQuery(event.query);
      markers = data
          .map((e) => Marker(
                markerId: MarkerId(e.displayName.text),
                position: LatLng(e.location.latitude, e.location.longitude),
                infoWindow: InfoWindow(title: e.displayName.text),
              ))
          .toSet();
      if (data.length == 1) {
        cameraPosition = CameraPosition(
          target: LatLng(
            data[0].location.latitude,
            data[0].location.longitude,
          ),
          zoom: 15,
        );
      } else {
        cameraPosition = CameraPosition(
          target: LatLng(
            AppGeolocator.userLocation.latitude,
            AppGeolocator.userLocation.longitude,
          ),
          zoom: 12,
        );
      }
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(cameraPosition),
      );
      emit(_Success());
    } catch (e) {
      emit(_Failure(e.toString()));
    }
  }

  //reset state
  Future<void> _onReset(_reset event, Emitter<MapState> emit) async {
    markers.clear();
    emit(_Initial());
  }

  //reset state
  Future<void> _onResetDirection(
      _resetDirection event, Emitter<MapState> emit) async {
    polylines.clear();
    emit(_Initial());
  }

  //
  Future<void> _onGetLocation(
    _getLocation event,
    Emitter<MapState> emit,
  ) async {
    emit(_Loading());
    try {
      final Position position = await AppGeolocator.determinePosition();
      userLocation = Marker(
        markerId: MarkerId('userLocation'),
        position: LatLng(position.latitude, position.longitude),
        infoWindow: InfoWindow(title: 'You are here'),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      );
      cameraPosition = CameraPosition(
        target: LatLng(position.latitude, position.longitude),
        zoom: 15,
      );
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(cameraPosition),
      );
      emit(_Success());
    } catch (e) {
      emit(_Failure(e.toString()));
    }
  }

  //getDirection
  Future<void> _onGetDirection(
    _getDirection event,
    Emitter<MapState> emit,
  ) async {
    emit(_Loading());
    try {
      final data = await _repo.getDirection(event.origin, event.destination);

      final polyLine = Polyline(
        polylineId: PolylineId('${event.origin}-${event.destination}'),
        points: data,
        color: Colors.blue,
        width: 5,
      );
      polylines.add(polyLine);
      emit(_DirectionSuccess());
    } catch (e) {
      emit(_Failure(e.toString()));
    }
  }
}
