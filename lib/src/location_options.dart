import 'package:flutter/widgets.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_map/flutter_map.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_map_location/src/types.dart';

enum LocationServiceStatus {
  unknown,
  disabled,
  permissionDenied,
  subscribed,
  paused,
  unsubscribed,
}

typedef LocationButtonBuilder = Widget Function(BuildContext context,
    ValueNotifier<LocationServiceStatus>, Function onPressed);

typedef LocationMarkerBuilder = Marker Function(
    BuildContext context, LatLngData ld, ValueNotifier<double?> heading);

class LocationOptions extends LayerOptions {
  LocationOptions(
      {required this.markers,
      this.onLocationUpdate,
      this.onLocationRequested,
      @required this.buttonBuilder,
      this.markerBuilder,
      this.updateIntervalMs = 1000})
      : super();

  final void Function(LatLngData)? onLocationUpdate;
  final void Function(LatLngData)? onLocationRequested;
  final LocationButtonBuilder? buttonBuilder;
  final LocationMarkerBuilder? markerBuilder;
  final int updateIntervalMs;
  List<Marker> markers;
}
