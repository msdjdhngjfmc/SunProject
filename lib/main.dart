import 'package:flutter/material.dart';
import 'package:sun_project/map/geolocation.dart';
import 'package:sun_project/menu/menu_main.dart';


import 'authorisation/auththorisation_mail.dart';

void main() {
  runApp(MaterialApp( home: MenuMain(),));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 50,
              width: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/asd.png', width: 100, height: 100),
              ],
            ),
            SizedBox(
              height: 200,
            ),
            Center(
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AuthMailScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF40BBDD),
                      padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 18),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: const Text('Зарегестрироваться', style: TextStyle(color: Colors.white,fontSize: 17),),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}