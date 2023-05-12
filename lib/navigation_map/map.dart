import 'package:flutter/material.dart';
import 'package:sun_project/navigation_map/geolocation.dart';
import 'settings.dart';
import 'dart:async';
import 'dart:io';
import 'package:permission_handler/permission_handler.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class NavigationMap extends StatefulWidget {
  const NavigationMap({super.key});

  @override
  State<NavigationMap> createState() => _NavigationMapState();
}
 
class _NavigationMapState extends State<NavigationMap> {
  late Position pos;
  late Placemark place;
   @override
  Future<void> initState() async {
    super.initState();

    
    LocationSettings locationOptions = const LocationSettings(accuracy: LocationAccuracy.high, distanceFilter: 1);

    updateLocation(pos);
    pos = await locationState();

    List<Placemark> placemark = await placemarkFromCoordinates(pos.latitude, pos.longitude);
    Placemark place = placemark[0];

    StreamSubscription positionStream = Geolocator.getPositionStream(locationSettings: locationOptions).listen((Position position) { setState(() {
    pos = position;
    });});
  }

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        body:
        Center(
          child:
            Text(
              'Latitude: ${pos != null ? pos.latitude.toString() : '0'},'
              'Longitude: ${pos != null ? pos.longitude.toString() : '0'}'
          )
        )
      );
  }
}