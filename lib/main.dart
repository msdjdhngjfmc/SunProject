import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


void main() {
  runApp(Autorization());
}

class Autorization extends StatelessWidget {
  final String assetName = 'assetss/logo_app.svg';

  const Autorization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            SvgPicture.asset(
                assetName,
                semanticsLabel: 'Acme Logo'
            ),
            Image.asset('assets/alo.png',width:300,height:100),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
