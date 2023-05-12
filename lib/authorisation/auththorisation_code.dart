import 'package:flutter/material.dart';
import 'package:sun_project/menu/menu_main.dart';


class AutorisationCode extends StatelessWidget {
  const AutorisationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
            width: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/asd.png', width: 100, height: 100),
            ],
          ),
           Column(
              children: [
                Text('Введите код из смс.', style: TextStyle(color: Colors.black,fontSize: 16),textAlign: TextAlign.center),
                Text('Мы отправили его email', style: TextStyle(color: Colors.black,fontSize: 16),textAlign: TextAlign.center),
                Text('andreygid@gmail.com', style: TextStyle(color: Colors.black,fontSize: 16),textAlign: TextAlign.center)

              ],
            ),
          const SizedBox(
            height: 80,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(1.0),
                  label: Text('Введите код',style: TextStyle(color: Color(0xFFABAAAA),fontSize: 20),),
                  hintText: '123 456',
                  hintStyle: TextStyle(color: Color(0xFFABAAAA),fontSize: 20,fontWeight: FontWeight.bold),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xFFFF6127),
                        width: 1.0
                    ),
                  ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MenuMain(),
                ),
              );
            },
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF40BBDD),
              padding: const EdgeInsets.symmetric(horizontal: 140,vertical: 18),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: const Text('Далее', style: TextStyle(color: Colors.white,fontSize: 17),),
          ),
        ],
      ),
    );
  }
}
