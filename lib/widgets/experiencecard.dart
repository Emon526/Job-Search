// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExperienceCaed extends StatefulWidget {
  final String text;
  const ExperienceCaed({Key? key, required this.text}) : super(key: key);

  @override
  _ExperienceCaedState createState() => _ExperienceCaedState();
}

class _ExperienceCaedState extends State<ExperienceCaed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 10,
        bottom: 10,
      ),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
        ),
        // color: Colors.white,
      ),
      height: 45,
      child: Center(
        widthFactor: 1,
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
