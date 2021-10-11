// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:newdemo/screens/skills/skills.dart';
import 'package:newdemo/widgets/floatingarrownextbutton.dart';
import 'package:newdemo/widgets/helpline.dart';
import 'package:newdemo/widgets/regcategorycard.dart';

class RegistrationCategory extends StatelessWidget {
  const RegistrationCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff757575),
            size: 36,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Registration',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color(0xff122f51),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Please choose your relevant type',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xff122f51),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RegestrationCategoryCard(
              onpressed: () {},
              customdesignstartColor: Colors.red,
              customdesignendColor: Colors.red,
              cardcolor: Colors.white,
              elevation: 3,
              iconData: Icons.work,
              categorytitle: 'Function Category',
              categorysubtitle: 'Finance,Media/ Advertisement/ Event Manager',
              iconColor: Colors.white,
              titleColor: Colors.red,
            ),
            SizedBox(height: 10),
            RegestrationCategoryCard(
              onpressed: () {},
              customdesignstartColor: Color(0xff122f51),
              customdesignendColor: Color(0xff122f51),
              cardcolor: Colors.white,
              elevation: 3,
              iconData: Icons.handyman,
              categorytitle: 'Special Skilled Category',
              categorysubtitle: 'Computer Operator, Mechanic/ Technician',
              iconColor: Colors.white,
              titleColor: Color(0xff122f51),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Helpline(),
          ],
        ),
      ),
      floatingActionButton: FloatingArrowNextButton(
        icon: Icons.arrow_forward,
        onpress: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Skills(),
            ),
          ),
        },
      ),
    );
  }
}
