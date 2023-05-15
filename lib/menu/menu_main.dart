import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:stomp_dart_client/stomp_frame.dart';
import 'package:sun_project/map/map_screen.dart';
import 'package:sun_project/menu/booking/booking_buy.dart';
import 'package:sun_project/menu/chat/chat_menu.dart';
import 'package:sun_project/menu/news/head.dart';
import 'package:sun_project/menu/profile/profile.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

final channel = WebSocketChannel.connect(
  Uri.parse('ws://192.168.1.53:8080/websocket'),
);


class MenuMain extends StatefulWidget {
  const MenuMain({Key? key}) : super(key: key);

  @override
  State<MenuMain> createState() => _MenuMainState();
}

class _MenuMainState extends State<MenuMain> {
  late StompClient stompClient;

  String message = '';
  int _selectedIndex = 1;
  static const List<Widget> _widgetOptions = <Widget>[
    HeadNews(),
    MapScreen(),
    ChatMenu(),
    Booking(),
    Profile(),
  ];



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    channel.sink.add('Hello!');
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(

          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0.0,

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.local_fire_department_outlined,),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.map_outlined),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.credit_score),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: ''),
          ],
          unselectedItemColor: Color(0xFFABAAAA),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: _selectedIndex != 2 ? Color(0xFF35B9DE) : Color(0xFF896AE2),
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}

