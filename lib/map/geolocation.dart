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
  bool visibility = false;

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
      resizeToAvoidBottomInset: false,
      body: _currentPosition != null
          ? Stack(
              children: [
                FlutterMap(
                  mapController: _mapController,
                  options: MapOptions(
                    center: LatLng(
                        _currentPosition.latitude, _currentPosition.longitude),
                    zoom: 13.0,
                  ),
                  layers: [
                    TileLayerOptions(
                      urlTemplate:
                          "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
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
                              Marker(
                                width: 80.0,
                                height: 80.0,
                                point: LatLng(59.957246,
                                    30.297794),
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
                ),
                visibility == false
                    ? TextButton(
                        onPressed: () {
                          setState(() {
                            visibility = true;
                          });
                        },
                        child: Container(
                          height: 60,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFFFFFFF),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Поиск',
                                style: TextStyle(
                                    color: Color(0xFFABAAAA), fontSize: 16),
                              ),
                              const Icon(
                                Icons.ac_unit_sharp,
                                size: 16,
                              ),
                            ],
                          ),
                        ))
                    : Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Column(
                          children: [
                            TextField(
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.dataset,
                                  size: 19,
                                ),
                                hintText: "Поиск",
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(0, 7, 7, 153),
                                    fontSize: 16),
                                fillColor: Color(0xFFFFFFFF),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ))
              ],
            )
          : Center(
              child: SpinKitDoubleBounce(
                color: Color(0xFF35B9DE),
                size: 80,
              ),
            ),
    );
  }
}
