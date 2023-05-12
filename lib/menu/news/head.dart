import 'package:flutter/material.dart';


class HeadNews extends StatelessWidget {
  const HeadNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return DefaultTabController(
        length: 2,
        child: Scaffold(

          appBar: AppBar(
            elevation: 1.0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            titleSpacing: 0,
            title: Text('Sunplace',style: TextStyle(color: Colors.black,fontStyle: FontStyle.italic),),
            bottom: TabBar(
              labelColor: Color(0xFF0FA4CE),
              unselectedLabelColor: Colors.black,
                tabs:[
                  Tab(text: 'Главное',),
                  Tab(text: 'Для вас',),
                ]),
          ),
          body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(
                          color: const Color(0xFF000000),
                          width: 1.0,
                          style: BorderStyle.solid), //Border.all
                      /*** The BorderRadius widget  is here ***/
 //BorderRadius.all
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(

                            children: [
                              CircleAvatar(),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Бахрома СПБ',style: TextStyle(color: Colors.black,fontSize: 16,)),
                                  Text('Большая Морская ул., д. 78',style: TextStyle(color: Color(0xFF1A6AC9),fontSize: 10,),),
                                ],
                              )
                            ],
                          ),),
                        Row(
                          children: [
                            Container(
                              width: 300,
                              child: Text('У нас открылась новя точка! Приходите на наше мероприятие в честь открытия в 19:00',style: TextStyle(color: Colors.black,fontSize: 12,),),
                            )
                          ],
                        ),
                        Row(),
                        Row(),
                      ],
                    ),
                  ),
                ],
              );
            },
          )
          
        )
    );
  }
}
