import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sun_project/navigation_map/map.dart';

import 'authorisation/auththorisation_mail.dart';

void main() {
  runApp(MaterialApp(home: App(),));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
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
                      onPressed: () => Navigator.pushNamed(context, '/mailscreen'),
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
                    TextButton(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => NavigationMap()),);
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 120,vertical: 18),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),side: BorderSide(color: Colors.black)),
                      ),
                      child: const Text('Войти', style: TextStyle(color: Color(0xFF187B97),fontSize: 17),),
                    ),
                  ],
                ),
              )
            ],
          ),
      );
  }
}
