import 'package:flutter/material.dart';
import 'settings.dart';
import 'dart:async';
import 'dart:io';
import 'package:permission_handler/permission_handler.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

  Future<Position> _determinePosition() async {
    bool isserviceEnabled;
    LocationPermission permission;

    isserviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isserviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  @override
  Future<Position> locationState () async{
    Position  position = await _determinePosition();
    return(position);
  }
  
void updateLocation(pos) async {
  try {
    Position newPosition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high).timeout(new Duration(seconds: 5));
    Position pos = newPosition;
  } catch (e) {
    print('Error: ${e.toString()}');
  }
}
   