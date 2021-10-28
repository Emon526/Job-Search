// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:newdemo/screens/auth/registration/setuserid.dart';

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
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _mobilecontroller = TextEditingController();
  final TextEditingController _countrycontroller = TextEditingController();

  final _mobileoremailformkey = GlobalKey<FormState>();

  void _submitdata() {
    final isActive = _mobileoremailformkey.currentState!.validate();
    print(isActive);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                height: size.height * 0.035,
              ),
              CustomProgressIndicator(value: 0.8),
              SizedBox(
                height: size.height * 0.065,
              ),
              Text(
                'Provide your Mobile No and Email Address (atleast one)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: size.height * 0.035,
              ),
              Form(
                key: _mobileoremailformkey,
                child: Column(
                  children: [
                    Field(
                      fillcolor: Colors.transparent,
                      levelcolor: Colors.grey,
                      obscureText: false,
                      controller: _countrycontroller,
                      validatortext: 'Enter Your Country Code',
                      boxtitle: 'Country Code',
                      horizontalpadding: 0,
                      verticalpadding: 7.5,
                    ),
                    // CountryCodePicker(
                    //   initialSelection: 'BD',
                    // ),

                    Field(
                      fillcolor: Colors.transparent,
                      levelcolor: Colors.grey,
                      obscureText: false,
                      controller: _mobilecontroller,
                      validatortext: 'Enter Your Mobile No',
                      boxtitle: 'Mobile Number',
                      horizontalpadding: 0,
                      verticalpadding: 7.5,
                    ),
                    SizedBox(
                      height: size.height * 0.035,
                    ),
                    OrDivider(),
                    SizedBox(
                      height: size.height * 0.035,
                    ),
                    Field(
                      fillcolor: Colors.transparent,
                      levelcolor: Colors.grey,
                      obscureText: false,
                      controller: _emailcontroller,
                      validatortext: 'Enter Your Email',
                      boxtitle: 'Email',
                      horizontalpadding: 0,
                      verticalpadding: 0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.17,
              ),
              Helpline(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingArrowNextButton(
        icon: Icons.arrow_forward,
        onpress: () => {
          _submitdata(),
          if (_emailcontroller.text.isNotEmpty ||
              _countrycontroller.text.isNotEmpty &&
                  _mobilecontroller.text.isNotEmpty)
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SetUserID(),
                ),
              ),
            },
        },
      ),
    );
  }
}
