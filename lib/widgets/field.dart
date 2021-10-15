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
          labelText: boxtitle,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
