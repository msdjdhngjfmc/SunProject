import 'package:flutter/material.dart';
import 'package:sun_project/menu/profile/send_profile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProfileUser(),
    );
  }
}

class ProfileUser extends StatefulWidget {
  const ProfileUser({Key? key}) : super(key: key);

  @override
  State<ProfileUser> createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {
    bool zpisButton = true;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('mr tetyanka',style: TextStyle(color: Color(0xFF896AE2),fontSize: 16),),
              GestureDetector(
                onTap: (){
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Гурман уровня 2',style: TextStyle(color: Colors.black,fontSize: 16),textAlign: TextAlign.center,),
                      content: Container(
                        width: 300,
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('До следующего уровня осталось:', style: TextStyle(fontSize: 12),),
                            Text('5/10 Посетить 5 заведений', style: TextStyle(fontSize: 12),),
                            Text('2/3 Посетить 3 маршрута', style: TextStyle(fontSize: 12),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: 250,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF896AE2),
                                        borderRadius: BorderRadius.all(Radius.circular(30))
                                      ),
                                    ),
                                    Container(
                                      width: 80,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF4FCD73),
                                          borderRadius: BorderRadius.all(Radius.circular(30))
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Text('30%', style: TextStyle(fontSize: 16),textAlign: TextAlign.center),
                            Text('При достижении 3 го уровня ваша плата за бронирование столика снизится до 20 Руб', style: TextStyle(color: Color(0xFF896AE2),fontSize: 12),textAlign: TextAlign.center,)
                          ],
                        ),
                      ),
                      backgroundColor: Color(0xFFE1DEEA),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    ),
                  );
                },
                child: Text('Гурман уровня 2',style: TextStyle(color: Color(0xFF896AE2),fontSize: 14)),
              )
            ],
          ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 30,
                ),
                Column(
                  children: [
                    Text('59',style: TextStyle(fontSize: 14)),
                    Text('Публикации',style: TextStyle(fontSize: 10))
                  ],
                ),
                Column(
                  children: [
                    Text('1,0М',style: TextStyle(fontSize: 14)),
                    Text('Подписчики',style: TextStyle(fontSize: 10))
                  ],
                ),
                Column(
                  children: [
                    Text('19',style: TextStyle(fontSize: 14)),
                    Text('Подписки',style: TextStyle(fontSize: 10))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 260,
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),

              child: Text('Какой-то текст'),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFFE1DEEA),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 4),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      side: BorderSide(color: Color(0xFF896AE2),width: 1)),

                  child: const Text('Редактировать профиль', style: TextStyle(color:  Color(0xFF896AE2),fontSize: 10),),
                ),
                SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Qrcode(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 4),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    side: BorderSide(color: Color(0xFF896AE2),width: 1),
                  ),
                  child: const Text('Поделиться профилем', style: TextStyle(color: Color(0xFF896AE2),fontSize: 10),),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {

              },
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFFEFEFEF),
                padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 4),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                side: BorderSide(color: Color(0xFF896AE2),width: 1),
              ),
              child: Container(
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_circle_outline,color: Color(0xFF896AE2),size: 20,),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Поделиться профилем', style: TextStyle(color: Color(0xFF896AE2),fontSize: 10),),
                  ],
                ),
              )
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child:  CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Color(0xFF896AE2),
                      child: CircleAvatar(
                        radius: 28.0,
                        backgroundColor: Color(0xFFE1DEEA),
                        child: Icon(
                          Icons.add,color: Color(0xFF896AE2),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 100,
                    child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: CircleAvatar(
                              radius: 30.0,
                              backgroundColor: Color(0xFF896AE2),
                              child: CircleAvatar(
                                radius: 28.0,
                                backgroundColor: Color(0xFFE1DEEA),

                              ),
                            ),
                          );
                        }
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                TextButton(onPressed: (){
                  if(zpisButton == true){
                    zpisButton = false;
                  } else {
                    zpisButton = true;
                  }
                  },
                    child: Text('Все записи', style: TextStyle(color: zpisButton ? Color(0xFF896AE2): Color(0xFF896AE2)),)
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
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
                            )
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(

                                    children: [
                                      CircleAvatar(),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Тетяна',style: TextStyle(color: Colors.black,fontSize: 16,)),
                                          Text('mr.tetyanka',style: TextStyle(color: Color(0xFF896AE2),fontSize: 10,),),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15),
                                    child: Text('источник: 123',style: TextStyle(fontSize: 12),),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 15,bottom:20),
                                  width: 300,
                                  child: Text('Го тусить!',style: TextStyle(color: Colors.black,fontSize: 12,),),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 300,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Colors.grey,
                                        ),
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
            )

          ],
        ),
      )
    );
  }
}
