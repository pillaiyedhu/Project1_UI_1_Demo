import 'package:flutter/material.dart';
import 'package:project1_day10_appui/Screens/ProfileScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen()
    );
  }
}
