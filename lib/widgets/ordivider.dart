// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.black.withOpacity(0.5),
            indent: 20,
            thickness: 1,
            endIndent: 10,
          ),
        ),
        Text(
          'OR',
          style: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 16,
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.black.withOpacity(0.5),
            indent: 20,
            thickness: 1,
            endIndent: 10,
          ),
        ),
      ],
    );
  }
}
