import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:permission_handler/permission_handler.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sun_project/navigation_map/geolocation.dart';

class loadingScreen extends StatefulWidget {
  const loadingScreen({super.key});

  @override
  State<loadingScreen> createState() => _loadingScreenState();
}

class _loadingScreenState extends State<loadingScreen> {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1DEEA),
      body: Center(
        child: Column(
            children: [
              Text('Рады видеть вас снова!',style: TextStyle(fontSize: 24,color:Color(0xFF896AE2)),),
              SizedBox(
                height: 8,
              ),
              SpinKitFadingCircle(
                size: 70,
                color: Color(0xFF896AE2),
              )
            ],
        ),
      ),
    );
  }
}