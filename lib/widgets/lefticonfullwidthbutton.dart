// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LeftIconFullwidthButton extends StatelessWidget {
  final IconData buttonicon;
  final String buttontext;
  final Color buttoncolor;
  final Color? forcegroundcolor;
  final Color bordercolor;
  final double? elevation;
  final Color? iconcolor;
  final Color? textcolor;
  final EdgeInsetsGeometry? margin;
  final VoidCallback onpress;

  const LeftIconFullwidthButton({
    Key? key,
    required this.buttonicon,
    required this.buttontext,
    required this.buttoncolor,
    this.forcegroundcolor,
    required this.bordercolor,
    this.elevation,
    this.iconcolor,
    this.textcolor,
    this.margin,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        border: Border.all(
          color: bordercolor,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(elevation),
          shadowColor: MaterialStateProperty.all(forcegroundcolor),
          backgroundColor: MaterialStateProperty.all(buttoncolor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 10,
            ),
          ),
        ),
        onPressed: onpress,
        child: Row(
          children: [
            SizedBox(
              width: 0,
              child: Icon(
                buttonicon,
                color: iconcolor,
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                buttontext,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textcolor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
