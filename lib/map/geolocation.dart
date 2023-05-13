import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class GeolocationAndMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Map Demo',
      home: GeolocationAndMapCall(),
    );
  }
}

class GeolocationAndMapCall extends StatefulWidget {
  @override
  _GeolocationAndMapCallState createState() => _GeolocationAndMapCallState();
}

class _GeolocationAndMapCallState extends State<GeolocationAndMapCall> {
  late MapController _mapController;
  var _currentPosition = null;

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
    _getCurrentLocation();
  }

  void _getCurrentLocation() async {
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _currentPosition = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentPosition != null ? FlutterMap(
        mapController: _mapController,
        options: MapOptions(
          center: LatLng(_currentPosition.latitude, _currentPosition.longitude),
          zoom: 13.0,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayerOptions(
            markers: _currentPosition == null
                ? []
                : [
                    Marker(
                      width: 80.0,
                      height: 80.0,
                      point: LatLng(_currentPosition.latitude,
                          _currentPosition.longitude),
                      builder: (ctx) => Container(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 50.0,
                        ),
                      ),
                    ),
                  ],
          ),
        ],
      ):Center(
        child: SpinKitDoubleBounce(
          color: Color(0xFF35B9DE),
          size: 80,
           ),
      ), 
    );
  }
}
