// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newdemo/searchjob.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({Key? key}) : super(key: key);

  @override
  _LogoScreenState createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
//set timer in splash screen

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SearchJob(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Image(
              height: 170,
              width: 170,
              image: AssetImage(
                'images/logo1.png',
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 150,
              ),
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey,
                color: Color(0xff122f51),
              ),
            ),
            SizedBox(
              height: 140,
            ),
            Image(
              width: 200,
              image: AssetImage(
                'images/logo.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'v1.0.0.16 (85)',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
