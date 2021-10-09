// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SkillCard extends StatefulWidget {
  final String text;
  const SkillCard({Key? key, required this.text}) : super(key: key);

  @override
  _SkillCardState createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.7)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(),
        title: Text(
          widget.text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
