// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  final double value;
  const CustomProgressIndicator({Key? key, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: LinearProgressIndicator(
        value: value,
        valueColor: AlwaysStoppedAnimation<Color>(Color(0xff15a211)),
        backgroundColor: Color(0xffe9e9e9),
      ),
    );
  }
}
