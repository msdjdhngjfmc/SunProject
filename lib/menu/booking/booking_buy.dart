import 'package:flutter/material.dart';

const List<Tab> TabBooking = <Tab>[
  Tab(text: 'Главное'),
  Tab(text: 'Для вас'),
];

class Booking extends StatelessWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookingMain(),
    );
  }
}

class BookingMain extends StatefulWidget {
  const BookingMain({Key? key}) : super(key: key);

  @override
  State<BookingMain> createState() => _BookingMainState();
}

class _BookingMainState extends State<BookingMain> with SingleTickerProviderStateMixin {


  late TabController controller;
  int tabIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: TabBar(
          controller: controller,
          onTap: (index){
            setState(() {
              tabIndex = index;
            });
          },
          labelStyle: TextStyle(fontSize: 20),
          labelColor: setColor(tabIndex),
          unselectedLabelColor: setColorUnSelected(tabIndex),
          indicatorColor: setColor(tabIndex),
          tabs:[
            Tab(text: 'Бронирование',),
            Tab(text: 'Маршрут',)
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          BookingBuy(),
          BookingBuy(),
        ],
      ),
    );


  }

  setColorUnSelected(int tabIndex){
    if(tabIndex == 0){
      return Color(0xFF896AE2).withOpacity(0.3);

    }else if(tabIndex == 1){
      return Color(0xFF35B9DE).withOpacity(0.3);

    }
  }

  setColor(int tabIndex){
    if(tabIndex == 0){
      return Color(0xFF35B9DE);
    }else if(tabIndex == 1){
      return Color(0xFF896AE2);
    }
  }
}

class BookingBuy extends StatelessWidget {
  const BookingBuy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('ghb'),
    );
  }
}
