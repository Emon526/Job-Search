// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Gendercard extends StatefulWidget {
  final String icon;
  final String text;
  final Color textcolor;
  final Color iconcolor;
  final Color tilecolor;
  final BoxBorder border;

  const Gendercard({
    Key? key,
    required this.icon,
    required this.text,
    required this.textcolor,
    required this.iconcolor,
    required this.tilecolor,
    required this.border,
  }) : super(key: key);

  @override
  State<Gendercard> createState() => _GendercardState();
}

class _GendercardState extends State<Gendercard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: widget.border,
          color: widget.tilecolor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        child: Row(
          children: [
            Image(
              image: AssetImage(
                widget.icon,
              ),
              color: widget.iconcolor,
              width: 30,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              widget.text,
              style: TextStyle(
                color: widget.textcolor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
