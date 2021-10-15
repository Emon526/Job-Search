// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:newdemo/screens/account/signin/congratulation.dart';
import 'package:newdemo/widgets/field.dart';
import 'package:newdemo/widgets/floatingarrownextbutton.dart';
import 'package:newdemo/widgets/helpline.dart';
import 'package:newdemo/widgets/ordivider.dart';

class NameOrEmail extends StatefulWidget {
  const NameOrEmail({Key? key}) : super(key: key);

  @override
  _NameOrEmailState createState() => _NameOrEmailState();
}

class _NameOrEmailState extends State<NameOrEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90),
            child: LinearProgressIndicator(
              color: Color(0xff15a211),
              backgroundColor: Color(0xffe9e9e9),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              'Provide your Mobile No and Email Address (atleast one)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Field(
            boxtitle: 'Country Code',
            horizontalpadding: 20,
            verticalpadding: 7.5,
          ),
          Field(
            boxtitle: 'Mobile Number',
            horizontalpadding: 20,
            verticalpadding: 7.5,
          ),
          SizedBox(
            height: 25,
          ),
          OrDivider(),
          SizedBox(
            height: 25,
          ),
          Field(
            boxtitle: 'Email',
            horizontalpadding: 20,
            verticalpadding: 0,
          ),
          SizedBox(
            height: 150,
          ),
          Helpline(),
        ],
      ),
      floatingActionButton: FloatingArrowNextButton(
        icon: Icons.arrow_forward,
        onpress: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Congratulations(),
            ),
          ),
        },
      ),
    );
  }
}
