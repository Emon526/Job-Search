// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:newdemo/screens/auth/registration/information.dart';
import 'package:newdemo/widgets/centericonfullwidthbutton.dart';
import 'package:newdemo/widgets/helpline.dart';
import 'package:newdemo/widgets/ordivider.dart';
import 'package:line_icons/line_icons.dart';
import 'package:newdemo/widgets/progressindicator.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.035,
          ),
          CustomProgressIndicator(value: 0.5),
          SizedBox(
            height: size.height * 0.065,
          ),
          Text(
            'Create Your Free BdJobs Account',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: size.height * 0.055,
          ),
          CenterIconFullWidthButton(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            iconandtextspace: 10,
            elevation: 0,
            forcegroundcolor: Colors.white,
            buttoncolor: Colors.white,
            iconcolor: Colors.red,
            buttontext: 'Import from Google',
            bordercolor: Colors.grey.withOpacity(0.5),
            buttonicon: LineIcons.googlePlus,
            textcolor: Colors.black,
            onpress: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => ,
              //   ),
              // );
            },
          ),
          CenterIconFullWidthButton(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            elevation: 0,
            forcegroundcolor: Colors.white,
            buttoncolor: Colors.white,
            iconcolor: Colors.blue,
            buttontext: 'Import from Facebook',
            bordercolor: Colors.grey.withOpacity(0.5),
            buttonicon: LineIcons.facebookF,
            textcolor: Colors.black,
            iconandtextspace: 10,
            onpress: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => ,
              //   ),
              // );
            },
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          OrDivider(),
          SizedBox(
            height: size.height * 0.025,
          ),
          CenterIconFullWidthButton(
            bordercolor: Colors.transparent,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            elevation: 10,
            buttoncolor: Colors.black,
            buttontext: 'Enter your information',
            textcolor: Colors.white,
            iconandtextspace: 10,
            onpress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Information(),
                ),
              );
            },
          ),
          SizedBox(
            height: size.height * 0.20,
          ),
          Helpline(),
        ],
      ),
    );
  }
}
