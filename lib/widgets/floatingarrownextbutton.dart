// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FloatingArrowNextButton extends StatelessWidget {
  final VoidCallback onpress;
  final IconData icon;
  const FloatingArrowNextButton({
    Key? key,
    required this.onpress,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.red,
      onPressed: onpress,
      child: Icon(
        icon,
        size: 40,
      ),
    );
  }
}
