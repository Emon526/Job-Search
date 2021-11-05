// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HotJobsCard extends StatefulWidget {
  final String title;
  final String description;
  final String logo;
  const HotJobsCard({
    Key? key,
    required this.title,
    required this.description,
    required this.logo,
  }) : super(key: key);

  @override
  _HotJobsCardState createState() => _HotJobsCardState();
}

class _HotJobsCardState extends State<HotJobsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.only(top: 6, left: 6, right: 6, bottom: 6),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    color: Color(0xff122f51),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.asset(
                    widget.logo,
                    height: 30,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 35,
              left: 30,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.chevron_right,
                  color: Colors.blue,
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(widget.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
