import 'package:geolocator/geolocator.dart';

class LocationServices{

  LocationServices._();
  static final instance =LocationServices._();
  final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;



  Future<bool> handlePermission() async {
    LocationPermission permission;
    permission = await _geolocatorPlatform.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await _geolocatorPlatform.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.

        return false;
      }
    }
    return true;
  }


}