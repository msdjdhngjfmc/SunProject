import 'package:flutter/material.dart';
import 'package:sun_project/menu/booking/routs.dart';

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
          Routs(),
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
    return Expanded(child: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF35B9DE),
                    width: 1.0,
                    style: BorderStyle.solid,

                  ),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(10.0) //                 <--- border radius here
                  ),
              ),
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Ресторан',style: TextStyle(fontSize: 16,),),
                              Text('13:30-16:00',style: TextStyle(color: Color(0xFF35B9DE),fontSize: 16),)
                            ],
                          ),
                          Image.asset('images/bahroma.png'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('27.03.2022',textAlign: TextAlign.end,style: TextStyle(fontSize: 16),),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 4),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15.0)),
                                    side: BorderSide(color: Color(0xFF35B9DE),width: 1)),

                                child: const Text('Оценить', style: TextStyle(color:  Color(0xFF35B9DE),fontSize: 14),),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Color(0xFF35B9DE),
                                  padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 4),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  side: const BorderSide(color: Color(0xFF35B9DE),width: 1),
                                ),
                                child: const Text('Детали бронирования', style: TextStyle(color: Colors.white,fontSize: 14),),
                              ),
                            ],
                          )
                        ],
                      ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    ));
  }
}
