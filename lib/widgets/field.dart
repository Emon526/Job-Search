// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  final String boxtitle;

  final double horizontalpadding;
  final double verticalpadding;
  const Field({
    Key? key,
    required this.boxtitle,
    required this.horizontalpadding,
    required this.verticalpadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalpadding,
        vertical: verticalpadding,
      ),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 0.5,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.withOpacity(0.5),
                width: 1.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            labelText: boxtitle,
            labelStyle: TextStyle(
              color: Colors.black,
            )),
      ),
    );
  }
}
