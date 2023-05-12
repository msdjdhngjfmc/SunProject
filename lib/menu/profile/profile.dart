

import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('mr tetyanka',style: TextStyle(color: Color(0xFF896AE2),fontSize: 16),),
              Text('Гурман уровня 2',style: TextStyle(color: Color(0xFF896AE2),fontSize: 14)),
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
                  onPressed: () {},
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
              onPressed: () {},

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
            )

          ],
        ),
      )
    );
  }
}
