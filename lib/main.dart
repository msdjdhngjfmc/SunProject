import 'package:flutter/material.dart';
import 'package:sockjs_client_wrapper/sockjs_client_wrapper.dart';
import 'package:sun_project/menu/menu_main.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'authorisation/auththorisation_mail.dart';
import 'package:stomp_dart_client/parser.dart';
import 'package:stomp_dart_client/sock_js/sock_js_parser.dart';
import 'package:stomp_dart_client/sock_js/sock_js_utils.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:stomp_dart_client/stomp_exception.dart';
import 'package:stomp_dart_client/stomp_frame.dart';
import 'package:stomp_dart_client/stomp_handler.dart';
import 'package:stomp_dart_client/stomp_parser.dart';

final Url = 'ws://192.168.1.53:8080/websocket';

void main() {
  runApp(MaterialApp( home: App(),));
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