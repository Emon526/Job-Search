// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Helpline extends StatelessWidget {
  const Helpline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'For any help',
            style: TextStyle(
              color: Color(0xff122f51),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Call at 16479',
            style: TextStyle(
              color: Colors.red,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
