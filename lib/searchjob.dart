// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:newdemo/signinpage.dart';
import 'package:newdemo/widgets/dropdown.dart';
import 'package:newdemo/widgets/lefticonfullwidthbutton.dart';

class SearchJob extends StatefulWidget {
  const SearchJob({Key? key}) : super(key: key);

  @override
  _SearchJobState createState() => _SearchJobState();
}

class _SearchJobState extends State<SearchJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Color(0xff122f51),
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignIn(),
                  ),
                );
              },
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Search Job',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff122f51),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              DropDown(
                dropDownValue: 'Job Title',
                listdata: ['CEO', 'Employee', 'Manager'],
              ),
              SizedBox(
                height: 20,
              ),
              DropDown(
                dropDownValue: 'Location',
                listdata: ['Dhaka', 'Feni', 'Cumilla'],
              ),
              SizedBox(
                height: 20,
              ),
              DropDown(
                dropDownValue: 'Expertise',
                listdata: ['Android', 'IOS', 'Web'],
              ),
              SizedBox(
                height: 50,
              ),
              LeftIconFullwidthButton(
                buttoncolor: Color(0xff122f51),
                buttonicon: Icons.search,
                buttontext: 'Search',
                bordercolor: Colors.transparent,
                elevation: 4,
                iconcolor: Colors.white,
                textcolor: Colors.white,
              ),
              SizedBox(
                height: 15,
              ),
              LeftIconFullwidthButton(
                buttoncolor: Colors.transparent,
                buttonicon: Icons.local_fire_department,
                buttontext: 'View New Jobs',
                bordercolor: Colors.grey,
                forcegroundcolor: Colors.transparent,
                iconcolor: Colors.red,
                textcolor: Color(0xff757575),
              ),
              SizedBox(
                height: 150,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'For any help',
                      style: TextStyle(
                        color: Color(0xff122f51),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Call at 16479',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignIn(),
            ),
          ),
        },
        child: Icon(
          Icons.arrow_forward,
          size: 40,
        ),
      ),
    );
  }
}
