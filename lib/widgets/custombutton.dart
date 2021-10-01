// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  const CustomButton({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                top: 5,
                bottom: 5,
                right: 5,
              ),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            // SizedBox(
            //   width: 5,
            // ),
            Padding(
              padding: const EdgeInsets.only(
                right: 7,
                top: 5,
                bottom: 5,
              ),
              child: Icon(
                icon,
                color: Colors.red,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
