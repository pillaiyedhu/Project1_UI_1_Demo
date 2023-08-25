import 'package:flutter/material.dart';
import 'package:project1_day10_appui/Screens/ImageScreenTabBarView.dart';
import 'package:project1_day10_appui/Screens/TextScreenTabBarView.dart';
// import 'package:project1_day10_appui/Screens/ProfileScreenTabBarView.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreenState createState() {
    return ProfileScreenState();
  }
}

class ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  ScrollController? scrollController;

  void initState() {
    tabController = TabController(length: 4, vsync: this);
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tabController?.dispose();
    scrollController?.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:
            const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          //controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage('assets/images/image.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 2,
                            color: Color.fromARGB(255, 226, 223, 223),
                            spreadRadius: 2,
                          )
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/parking.png', height: 14),
                          Text('Player',
                              style:
                                  TextStyle(fontFamily: 'Ruda', fontSize: 14))
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('300',
                              style:
                                  TextStyle(fontFamily: 'Ruda', fontSize: 14)),
                          Text('Followers',
                              style:
                                  TextStyle(fontFamily: 'Ruda', fontSize: 14))
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('500',
                              style:
                                  TextStyle(fontFamily: 'Ruda', fontSize: 14)),
                          Text('Following',
                              style:
                                  TextStyle(fontFamily: 'Ruda', fontSize: 14))
                        ],
                      )
                    ],
                  )
                ],
              ),

              SizedBox(
                  height:
                      10), //Row 1 Ended.................................................

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Maria Sharapova',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Ruda',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Age',
                    style: TextStyle(
                        fontSize: 8,
                        fontFamily: 'Ruda',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Position',
                    style: TextStyle(
                        fontSize: 8,
                        fontFamily: 'Ruda',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Height',
                    style: TextStyle(
                        fontSize: 8,
                        fontFamily: 'Ruda',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Weight',
                    style: TextStyle(
                        fontSize: 8,
                        fontFamily: 'Ruda',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text('Skills : Top 3',
                      style: TextStyle(
                          fontSize: 8,
                          fontFamily: 'Ruda',
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 5)
                ],
              ),

              SizedBox(
                height: 10,
              ), //Column 2 Ended..............................................

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 5),
                  Container(
                    height: 40,
                    width: 80,
                    child: Card(
                        margin: EdgeInsets.all(5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.white,
                        elevation: 4,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/images/follow.png',
                                  height: 12),
                              Text('Follow',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Ruda',
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    
                    height: 40,
                    width: 80,
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Color(0xFFFF5722),
                        elevation: 4,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/images/feed.png',
                                height: 12,
                              ),
                              Text('Feed',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Ruda',
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 40,
                    width: 80,
                    child: Card(
                        // margin: EdgeInsets.only(left: 25),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.white,
                        elevation: 4,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/images/review.png',
                                height: 12,
                              ),
                              Text('Rating',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Ruda',
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 40,
                    width: 50,
                    child: Card(
                        // margin: EdgeInsets.all(5),

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.white,
                        elevation: 4,
                        child: Center(
                          child: Image.asset(
                            'assets/images/chat.png',
                            height: 16,
                          ),
                        )),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ), //------------3rd Row ended-------------------------

              Center(
                child: Container(
                  // alignment: Alignment.center,
                  height: 40,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30)),
                  child: TabBar(
                      controller: tabController,
                      indicatorColor: Color(0xFFFF5722),
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 1,
                      tabs: [
                        Tab(
                          icon: Image.asset(
                            'assets/images/text.png',
                            height: 16,
                          ),
                        ),
                        Tab(
                          icon: Image.asset(
                            'assets/images/imageview.png',
                            height: 16,
                          ),
                        ),
                        Tab(
                          icon: Image.asset(
                            'assets/images/reel.png',
                            height: 16,
                          ),
                        ),
                        Tab(
                          icon: Image.asset(
                            'assets/images/player.png',
                            height: 16,
                          ),
                        ),
                      ]),
                ),
              ), //--------------------------appBar--------------

              SizedBox(
                height: 20,
              ),

              Container(
                height: 250,
                width: 350,
                color: Colors.transparent,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) => TextScreenTabBarView(),),
                    
                    ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) => ImageScreenTabBarView(),),
                    
                    Text("Hello"),
                    Text("Hello"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.location_city),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.sports_basketball),label:''),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:''),
      ]),
    );
  }
}
