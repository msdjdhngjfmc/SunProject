import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class GeolocationState extends State {
  
  Position? position;

  @override
  void initState() {
    super.initState();

    final LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.best,
      distanceFilter: 1,
    );
    StreamSubscription<Position> positionStream = Geolocator.getPositionStream(locationSettings: locationSettings).listen(
    (position) {
        print(position == null ? 'Unknown' : '${position.latitude.toString()}, ${position.longitude.toString()}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Row(children: [

        ],),
        FlutterMap(
          options: MapOptions(
              center: position != null ? LatLng(position!.latitude, position!.longitude) : LatLng(59.9342802, 30.3350986),
              zoom: 8,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'dev.fleaflet.flutter_map.example',
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: position != null ? LatLng(position!.latitude, position!.longitude) : LatLng(59.9342802, 30.3350986),
                  width: 15,
                  height: 15, 
                  builder: ((context) => Icon(Icons.people))
                )
              ],
            )
          ],
        )
      ]),
    );
  }
}

class mapHome extends StatefulWidget {
  @override
  GeolocationState createState() => new GeolocationState();
}
