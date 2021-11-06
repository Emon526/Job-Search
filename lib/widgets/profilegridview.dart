// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ProfileGridViewcard extends StatefulWidget {
  final String count;
  final String title;
  final IconData? icon;
  final List<Color> color;

  const ProfileGridViewcard(
      {Key? key,
      required this.count,
      required this.title,
      this.icon,
      required this.color})
      : super(key: key);

  @override
  _ProfileGridViewcardState createState() => _ProfileGridViewcardState();
}

class _ProfileGridViewcardState extends State<ProfileGridViewcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 15,
        top: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: widget.color,
        ),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.count,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: Icon(
              widget.icon,
              size: 30,
              color: Colors.white.withOpacity(0.4),
            ), //Icon
          ),
        ],
      ),
    );
  }
}
