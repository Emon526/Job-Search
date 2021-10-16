// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InformationListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onpress;
  const InformationListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: ListTile(
        leading: Icon(
          icon,
          color: Color(0xff122f51),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
