// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ProfileGridViewcard extends StatefulWidget {
  final String count;
  final String titile;
  final IconData? icon;
  const ProfileGridViewcard(
      {Key? key, required this.count, required this.titile, this.icon})
      : super(key: key);

  @override
  _ProfileGridViewcardState createState() => _ProfileGridViewcardState();
}

class _ProfileGridViewcardState extends State<ProfileGridViewcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            Color(0xff162e54),
            Color(0xff4c66ec),
          ],
        ),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.count,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.titile,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: Icon(
              widget.icon,
              color: Colors.white.withOpacity(0.4),
            ), //Icon
          ),
        ],
      ),
    );
  }
}
