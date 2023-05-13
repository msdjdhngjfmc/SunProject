import 'package:flutter/material.dart';

class Qrcode extends StatelessWidget {
  const Qrcode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.close,color: Color(0xFF896AE2),),),
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
            width: 200,
            //height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xFF896AE2),
            ),

            child: Text('Qr-код профиля',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset('images/qrcode.png'),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('@mr0tetyanka',style: TextStyle(color: Color(0xFF896AE2)),),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Icon(Icons.qr_code,color: Color(0xFF896AE2),size: 33,),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 200,
                        child:
                        Text('Наведите камеру на QR-код, чтобы его отсканировать',style: TextStyle(color: Colors.black,fontSize: 14),),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
