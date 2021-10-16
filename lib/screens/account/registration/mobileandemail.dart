// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:newdemo/screens/account/registration/setuserid.dart';
import 'package:newdemo/widgets/field.dart';
import 'package:newdemo/widgets/floatingarrownextbutton.dart';
import 'package:newdemo/widgets/helpline.dart';
import 'package:newdemo/widgets/ordivider.dart';
import 'package:newdemo/widgets/progressindicator.dart';

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
      backgroundColor: Color(0xffffffff),
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.bottomCenter,
            fit: BoxFit.fitWidth,
            image: AssetImage('asset/images/background.jpg'),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              CustomProgressIndicator(value: 0.8),
              SizedBox(
                height: 50,
              ),
              Text(
                'Provide your Mobile No and Email Address (atleast one)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 25,
              ),
              Field(
                boxtitle: 'Country Code',
                horizontalpadding: 0,
                verticalpadding: 7.5,
              ),
              // CountryCodePicker(
              //   initialSelection: 'BD',
              // ),

              Field(
                boxtitle: 'Mobile Number',
                horizontalpadding: 0,
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
                horizontalpadding: 0,
                verticalpadding: 0,
              ),
              SizedBox(
                height: 150,
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
              builder: (context) => SetUserID(),
            ),
          ),
        },
      ),
    );
  }
}
