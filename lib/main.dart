import 'package:eatit/screens/home_screen.dart';
import 'package:eatit/screens/location_pick_screen.dart';
import 'package:eatit/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eatit',
      /* theme: ThemeData(
        primarySwatch: Colors.blue,
      ), */
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
