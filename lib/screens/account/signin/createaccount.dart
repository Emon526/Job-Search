// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:newdemo/screens/account/registration/contactdetails.dart';
import 'package:newdemo/widgets/centericonfullwidthbutton.dart';
import 'package:newdemo/widgets/helpline.dart';
import 'package:newdemo/widgets/ordivider.dart';
import 'package:line_icons/line_icons.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
      body: Column(
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
          Text(
            'Create Your Free BdJobs Account',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 40,
          ),
          CenterIconFullWidthButton(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            sizeboxwidth: 10,
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
            sizeboxwidth: 10,
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
            height: 20,
          ),
          OrDivider(),
          SizedBox(
            height: 20,
          ),
          CenterIconFullWidthButton(
            bordercolor: Colors.transparent,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            elevation: 10,
            buttoncolor: Colors.black,
            buttontext: 'Enter your information',
            textcolor: Colors.white,
            sizeboxwidth: 10,
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
            height: MediaQuery.of(context).size.height * 0.20,
          ),
          Helpline(),
        ],
      ),
    );
  }
}
