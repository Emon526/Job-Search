// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SkillCard extends StatefulWidget {
  final String text;
  final Color color;
  final Color textcolor;
  final Color bordercolor;
  const SkillCard({
    Key? key,
    required this.text,
    required this.color,
    required this.textcolor,
    required this.bordercolor,
  }) : super(key: key);

  @override
  _SkillCardState createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: widget.color,
        border: Border.all(color: widget.bordercolor),
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(),
        title: Text(
          widget.text,
          style: TextStyle(
            color: widget.textcolor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
