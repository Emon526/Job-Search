// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newdemo/screens/splash/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogoScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
