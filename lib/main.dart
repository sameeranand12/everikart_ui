import 'package:flutter/material.dart';
import 'homescreen/HomeScreen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,
      title: 'Everikart Store',
      theme: ThemeData(

        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
        splashColor: Colors.transparent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:HomeScreen(),
    );
  }
}

