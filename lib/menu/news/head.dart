import 'package:flutter/material.dart';
import 'package:sun_project/menu/news/for_user.dart';



const List<Tab> myTabs = <Tab>[
  Tab(text: 'Главное'),
  Tab(text: 'Для вас'),
];

class HeadNews extends StatelessWidget {
  const HeadNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: myTabs.length,
        child: Scaffold(

          appBar: AppBar(
            elevation: 0.0,
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
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                  color: const Color(0xFF000000),
                                  width: 1.0,
                                  style: BorderStyle.solid),
                            ) //Border.all
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
                                  padding: EdgeInsets.only(left: 15,bottom:20),
                                  width: 300,
                                  child: Text('У нас открылась новя точка! Приходите на наше мероприятие в честь открытия в 19:00',style: TextStyle(color: Colors.black,fontSize: 12,),),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [

                                      Container(
                                        color: Colors.grey,
                                        child: Center(
                                          child: Text('Фото'),
                                        ),

                                      )

                                    ],
                                  ),
                                )

                              ],
                            ),
                            Padding(
                              padding:EdgeInsets.only(left: 15,bottom: 10,right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline,color: Colors.grey,)),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('1'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline,color: Colors.grey,)),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('1'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      IconButton(onPressed: (){}, icon: Icon(Icons.send,color: Colors.grey,)),

                                    ],
                                  ),
                                  Text('6 часов назад')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
              Userstories(),
            ]
          )
          
        )
    );
  }
}



