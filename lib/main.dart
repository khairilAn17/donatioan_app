import 'package:donation/constant.dart';
import 'package:flutter/material.dart';
import './screen/screen_home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: kPrimary, backgroundColor: kBackground),
      home: HomeScreen(),
    );
  }
}
