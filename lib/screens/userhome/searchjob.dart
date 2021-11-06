// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:newdemo/widgets/dropdown.dart';
import 'package:newdemo/widgets/experiencecard.dart';

class UserSearchJob extends StatefulWidget {
  const UserSearchJob({Key? key}) : super(key: key);

  @override
  _UserSearchJobState createState() => _UserSearchJobState();
}

class _UserSearchJobState extends State<UserSearchJob> {
  final _eperiencelist = <String>[
    'Less than 1 year',
    '1-3 years',
    '3-5 years',
    '5-10 years',
    'Over 10 Years'
  ];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff122f51),
        title: Text('Job Search'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Center(child: Text('Search')),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                DropDown(
                  dropDownValue: 'Keyword',
                  listdata: ['CEO', 'Employee', 'Manager'],
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                DropDown(
                  dropDownValue: 'General Category',
                  listdata: ['CEO', 'Employee', 'Manager'],
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                Text(
                  'OR',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                DropDown(
                  dropDownValue: 'Special Skilled  Category',
                  listdata: ['CEO', 'Employee', 'Manager'],
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                DropDown(
                  dropDownValue: 'Location',
                  listdata: ['CEO', 'Employee', 'Manager'],
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
              ],
            ),
            Text(
              'Experience',
              style: TextStyle(
                color: Color(0xff122f51),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: size.height * 0.020,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ExperienceCaed(text: _eperiencelist[0]),
                    ExperienceCaed(text: _eperiencelist[1]),
                  ],
                ),
                Row(
                  children: [
                    ExperienceCaed(text: _eperiencelist[2]),
                    ExperienceCaed(text: _eperiencelist[3]),
                  ],
                ),
                ExperienceCaed(text: _eperiencelist[4]),
              ],
            ),
            SizedBox(
              height: size.height * 0.052,
            ),
            Image(
              fit: BoxFit.cover,
              image: AssetImage('asset/images/netflixad.png'),
            ),
          ],
        ),
      ),
    );
  }
}
