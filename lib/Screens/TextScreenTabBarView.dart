import 'package:flutter/material.dart';

class TextScreenTabBarView extends StatefulWidget {
  TextScreenTabBarViewState createState() {
    return TextScreenTabBarViewState();
  }
}

class TextScreenTabBarViewState extends State<TextScreenTabBarView> {
  String text = '''Flutter is a free and open-source UI framework for creating native mobile applications from Google. Released in 2017, Flutter allows developers to build mobile applications with a single codebase and programming language. This capability makes building both iOS and Android apps simpler and faster.''';

  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                      radius: 15,
                      //backgroundColor: Colors.orangeAccent,
                      backgroundImage: AssetImage(
                        'assets/images/image.jpg',
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'Methina',
                        style: TextStyle(
                            fontFamily: 'Ruda',
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_city, size: 8),
                          Text('Houston',
                              style: TextStyle(
                                  fontFamily: 'Ruda',
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Text('23 min ago',
                            style: TextStyle(
                                fontFamily: 'Ruda',
                                fontSize: 8,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                      child: Image.asset(
                                  'assets/images/share1.png',
                                  height: 8,
                            ),
                      elevation: 4,
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                      child: Image.asset(
                                  'assets/images/share2.png',
                                  height: 8,
                            ),
                    ),
                  ),
                ],
              )
            ],
          ), //.........................Column 1 Ends here...............
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 180, 
                width: 290, 
                child: Card(
                  margin: EdgeInsets.all(3),
                  elevation: 4,
                  child: Text('$text',style: TextStyle(
                            fontFamily: 'Ruda',
                            fontSize: 12,
                            wordSpacing: 4,
                            fontWeight: FontWeight.bold),),
                )
              ),
              Container(
                  height: 180,
                  width: 50,
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/like.png',
                                height: 16,
                              ),
                              Text('300 Likes',style: TextStyle(fontFamily: 'Ruda',fontSize: 6),)
                            ],
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/comment.png',
                                height: 16,
                              ),
                              Text('40 Comments',style: TextStyle(fontFamily: 'Ruda',fontSize: 6),)
                            ],
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/save.png',
                                height: 16,
                              ),
                              Text('10 Save',style: TextStyle(fontFamily: 'Ruda',fontSize: 6),)
                            ],
                          )
                          

                        ],
                      ),
                    ),
                  ))
            ],
          ),

          SizedBox(height: 20)

        ]),

      
    );
  }
}
