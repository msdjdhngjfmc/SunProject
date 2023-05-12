import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';
import 'package:story_view/widgets/story_view.dart';
import 'package:sun_project/menu/news/head.dart';

class Userstories extends StatefulWidget {
  const Userstories({Key? key}) : super(key: key);

  @override
  State<Userstories> createState() => _UserstoriesState();
}

class _UserstoriesState extends State<Userstories> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                    color: const Color(0xFF000000),
                    width: 1.0,
                    style: BorderStyle.solid),
                bottom: BorderSide(
                    color: const Color(0xFF000000),
                    width: 1.0,
                    style: BorderStyle.solid),
              )
          ),
          height: 70,
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => NewStoryItem(),
                        ),
                      );
                    },
                    child:  CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.black,
                    ),
                  ),
                );
              }
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                              color: const Color(0xFF000000),
                              width: 1.0,
                              style: BorderStyle.solid),
                        )
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
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
                                      Text('Тетяна',style: TextStyle(color: Colors.black,fontSize: 16,)),
                                      Text('mr.tetyanka',style: TextStyle(color: Color(0xFF896AE2),fontSize: 10,),),
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: Text('источник: 123',style: TextStyle(fontSize: 12),),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 15,bottom:20),
                              width: 300,
                              child: Text('Го тусить!',style: TextStyle(color: Colors.black,fontSize: 12,),),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 200,
                                    height: 300,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey,
                                    ),
                                    child: Center(
                                      child: Text('Фото'),
                                    ),
                                  )
                                ],
                              ),
                            )

                          ],
                        ),
                        Padding(
                          padding:EdgeInsets.only(left: 15,bottom: 10,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline,color: Colors.grey,)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('1'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline,color: Colors.grey,)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('1'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.send,color: Colors.grey,)),

                                ],
                              ),
                              Text('6 часов назад')
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}

class NewStoryItem extends StatefulWidget {
  NewStoryItem({Key? key}) : super(key: key);


  @override
  State<NewStoryItem> createState() => _NewStoryItemState();
}

class _NewStoryItemState extends State<NewStoryItem> {
  final controller = StoryController();
  List<StoryItem> storyItems = [];
  @override
  Widget build(BuildContext context) {
    return StoryView(
      storyItems: [
        StoryItem.text(title: 'Привет', backgroundColor: Colors.green)
      ],
      onComplete: () {},
      onVerticalSwipeComplete: (direction) {
        if (direction == Direction.down) {
          Navigator.pop(context);
        }
      },
      onStoryShow: (s) {notifyServer(s);},
      controller: controller,
      inline: true,
      repeat: false,
    );
  }

  void notifyServer(StoryItem s) {}
}