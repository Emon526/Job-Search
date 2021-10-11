// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newdemo/screens/home/searchjob.dart';

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
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: size.height * .2,
            ),
            Image(
              height: size.height * 0.2,
              width: size.width * 0.35,
              image: AssetImage(
                'images/logo1.png',
              ),
            ),
            SizedBox(
              height: size.height * .15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.3,
              ),
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey,
                color: Color(0xff122f51),
              ),
            ),
            SizedBox(
              height: size.height * .23,
            ),
            Image(
              width: size.width * 0.5,
              image: AssetImage(
                'images/logo.png',
              ),
            ),
            SizedBox(
              height: size.height * .02,
            ),
            Text(
              'v1.0.0.16 (85)',
              style: TextStyle(
                fontSize: size.width * 0.05,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
