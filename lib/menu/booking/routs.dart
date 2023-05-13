import 'package:flutter/material.dart';

class Routs extends StatelessWidget {
  const Routs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF35B9DE),
                  width: 1.0,
                  style: BorderStyle.solid,

                ),
                borderRadius: const BorderRadius.all(
                    Radius.circular(10.0) //                 <--- border radius here
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Ресторан',style: TextStyle(fontSize: 16,),),
                            Text('13:30-16:00',style: TextStyle(color: Color(0xFF896AE2),fontSize: 16),)
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text('Парк 300 летия',style: TextStyle(color: Color(0xFF896AE2),fontSize: 20),),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('27.03.2022',textAlign: TextAlign.end,style: TextStyle(fontSize: 16),),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 4),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0)),
                                  side: BorderSide(color: Color(0xFF896AE2),width: 1)),

                              child: const Text('Оценить', style: TextStyle(color:  Color(0xFF896AE2),fontSize: 14),),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xFF896AE2),
                                padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 4),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                side: const BorderSide(color: Color(0xFF896AE2),width: 1),
                              ),
                              child: const Text('Детали бронирования', style: TextStyle(color: Colors.white,fontSize: 14),),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    ));
  }
}
