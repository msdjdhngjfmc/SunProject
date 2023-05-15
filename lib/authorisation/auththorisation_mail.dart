import 'package:flutter/material.dart';
import 'package:sun_project/authorisation/auththorisation_code.dart';


class AuthMailScreen extends StatelessWidget {
  const AuthMailScreen({Key? key}) : super(key: key);

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
              Image.asset('assets/images/asd.png', width: 100, height: 100),
            ],
          ),
          const Text('Введите ваш email', style: TextStyle(color: Colors.black,fontSize: 16),),
          const SizedBox(
            height: 80,
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(1.0),
                    label: Text('Email',style: TextStyle(color: Color(0xFFABAAAA),fontSize: 20),),
                    hintText: 'andreygid@gmail.com',
                  hintStyle: TextStyle(color: Color(0xFFABAAAA),fontSize: 20,fontWeight: FontWeight.bold)
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
                  builder: (context) => const AutorisationCode(),
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
