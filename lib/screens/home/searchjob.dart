// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:newdemo/screens/account/signin/namesignin.dart';
import 'package:newdemo/screens/account/signin/signinpage.dart';
import 'package:newdemo/widgets/dropdown.dart';
import 'package:newdemo/widgets/floatingarrownextbutton.dart';
import 'package:newdemo/widgets/helpline.dart';
import 'package:newdemo/widgets/lefticonfullwidthbutton.dart';

class SearchJob extends StatefulWidget {
  const SearchJob({Key? key}) : super(key: key);

  @override
  _SearchJobState createState() => _SearchJobState();
}

class _SearchJobState extends State<SearchJob> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: GestureDetector(
              child: Icon(
                Icons.account_circle,
                color: Color(0xff122f51),
                size: 30,
              ),
              onTap: () {
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
                height: size.height * 0.065,
              ),
              DropDown(
                dropDownValue: 'Job Title',
                listdata: ['CEO', 'Employee', 'Manager'],
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              DropDown(
                dropDownValue: 'Location',
                listdata: ['Dhaka', 'Feni', 'Cumilla'],
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              DropDown(
                dropDownValue: 'Expertise',
                listdata: ['Android', 'IOS', 'Web'],
              ),
              SizedBox(
                height: size.height * 0.065,
              ),
              LeftIconFullwidthButton(
                buttoncolor: Color(0xff122f51),
                buttonicon: Icons.search,
                buttontext: 'Search',
                bordercolor: Colors.transparent,
                elevation: 4,
                iconcolor: Colors.white,
                textcolor: Colors.white,
                onpress: () {},
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              LeftIconFullwidthButton(
                buttoncolor: Colors.white,
                buttonicon: Icons.local_fire_department,
                buttontext: 'View New Jobs',
                bordercolor: Colors.grey,
                forcegroundcolor: Colors.transparent,
                iconcolor: Colors.red,
                textcolor: Color(0xff757575),
                onpress: () {},
              ),
              SizedBox(
                height: size.height * 0.15,
              ),
              Helpline(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingArrowNextButton(
        icon: Icons.arrow_forward,
        onpress: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NameSignIn(),
            ),
          ),
        },
      ),
    );
  }
}
