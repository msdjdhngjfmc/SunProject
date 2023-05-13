import 'package:flutter/material.dart';
import 'package:sun_project/map/geolocation.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  bool isMap = true;
  bool themeSwitcher = true;
  Color mainThemeColorPurp = const Color(0xFF896AE2);
  Color mainThemeColorBlue = const Color(0xFF35B9DE);
  Color disableColor = const Color(0xFFC4C4C4);

  static const List<Tab> myTabs = <Tab>[
    Tab(
      text: 'Карта',
    ),
    Tab(
      text: 'Сравнение',
    ),
    Tab(
      text: 'Список',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(length: myTabs.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _controller.index == 0 ? isMap = true : isMap = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            flexibleSpace: isMap == true
                ? SafeArea(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              themeSwitcher = true;
                            });
                          },
                          style: TextButton.styleFrom(
                            //padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 4),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(8))),
                            //minimumSize: const Size(170, 30),
                            backgroundColor: themeSwitcher == true
                                ? mainThemeColorBlue
                                : disableColor,
                          ),
                          child: Text(
                            'Заведения',
                            style: TextStyle(
                                color: themeSwitcher == true
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              themeSwitcher = false;
                            });
                          },
                          style: TextButton.styleFrom(
                            //padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 4),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8))),
                            //minimumSize: const Size(170, 30),
                            backgroundColor: themeSwitcher == false
                                ? mainThemeColorPurp
                                : disableColor,
                          ),
                          child: Text(
                            'Красоты',
                            style: TextStyle(
                                color: themeSwitcher == false
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ))
                : SafeArea(
                    child: TabBar(
                      labelColor: Color(0xFFFF6127),
                      indicatorColor: Color(0xFFFF6127),
                      unselectedLabelColor: Colors.black,
                      controller: _controller,
                      tabs: myTabs,
                    ),
                  ),
            bottom: isMap == true
                ? TabBar(
                    labelColor: Color(0xFFFF6127),
                    indicatorColor: Color(0xFFFF6127),
                    unselectedLabelColor: Colors.black,
                    controller: _controller,
                    tabs: myTabs,
                  )
                : null,
          ),
          body: TabBarView(children: [
            GeolocationAndMap(),
          ]),
        ));
  }
}
