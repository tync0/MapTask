part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  const factory MapState.initial() = _Initial;
  const factory MapState.loading() = _Loading;
  const factory MapState.success() = _Success;
  const factory MapState.directionSuccess() = _DirectionSuccess;
  const factory MapState.failure(String error) = _Failure;
}
