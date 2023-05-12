import 'package:flutter/material.dart';
import 'package:sun_project/menu/news/head.dart';
import 'package:sun_project/menu/profile/profile.dart';

class MenuMain extends StatefulWidget {
  const MenuMain({Key? key}) : super(key: key);

  @override
  State<MenuMain> createState() => _MenuMainState();
}

class _MenuMainState extends State<MenuMain> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HeadNews(),
    Text(
      'Index 1: Business',

    ),
    Text(
      'Index 2: School',

    ),
    Text(
      'Index 3: School',

    ),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
          selectedItemColor: Color(0xFF35B9DE),
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}

