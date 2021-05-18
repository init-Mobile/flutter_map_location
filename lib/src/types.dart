// ignore: import_of_legacy_library_into_null_safe
import 'package:latlong2/latlong.dart';

class LatLngData {
  const LatLngData(this.location, this.accuracy);

  final LatLng? location;

  /// Estimated horizontal accuracy, radial, in meters.
  final double? accuracy;

  bool highAccurency() {
    return !(accuracy == null || accuracy! <= 0.0 || accuracy! > 30.0);
  }
}
