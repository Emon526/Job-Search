// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_element

import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:newdemo/screens/auth/registration/information.dart';
import 'package:newdemo/screens/hotjobs/hotjobs.dart';
import 'package:newdemo/screens/shortlisted/shortlisted.dart';
import 'package:newdemo/screens/userhome/home.dart';
import 'package:newdemo/screens/userprofile/userprofile.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  List<Widget> _widgetlist = <Widget>[
    Home(),
    HotJobs(),
    ShortListed(),
    UserProfile(),
    Information(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetlist.elementAt(_currentIndex),
      bottomNavigationBar: CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: Color(0xff122f51),
        strokeColor: Color(0x30040307),
        unSelectedColor: Color(0xffacacac),
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          CustomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.local_fire_department),
            title: Text('Hot Jobs'),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Shortlisted'),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text('More'),
          ),
        ],
      ),
    );
  }
}
