import 'package:flutter/material.dart';

class ChatMenu extends StatelessWidget {
  const ChatMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatMenuDinamic(),
    );
  }
}


class ChatMenuDinamic extends StatefulWidget {
  const ChatMenuDinamic({Key? key}) : super(key: key);

  @override
  State<ChatMenuDinamic> createState() => _ChatMenuDinamicState();
}

class _ChatMenuDinamicState extends State<ChatMenuDinamic> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 120,
        elevation: 0,
        flexibleSpace: Container(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text('Чаты',style: TextStyle(color: Colors.black,fontSize: 16),),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: "Введите логин",
                        hintStyle: TextStyle(color: Color(0xFFABAAAA),fontSize: 16),
                        fillColor: Color(0xFFE1DEEA),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,),
                        ),
                    ),
                  ),
              )
            ],
          ),
        ),

      ),
      body: Container(
        child:
            ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    // сделать чат
                  },
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                  color: const Color(0xFFE1DEEA),
                                  width: 1.0,
                                  style: BorderStyle.solid),
                            )
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10,right: 10,left: 10),
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
                                          Text('mr danil',style: TextStyle(color: Colors.black,fontSize: 14,)),
                                          Text('Встретимся в 11:00',style: TextStyle(fontSize: 12,),),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:EdgeInsets.only(right: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('10:00')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF896AE2),
        child: Icon(Icons.mode_edit_outlined,color: Colors.white,size: 30,),
        onPressed: (){

        },
      ),
    ));
  }
}
