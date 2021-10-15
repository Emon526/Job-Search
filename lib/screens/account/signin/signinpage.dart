// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:newdemo/screens/account/registration/registrationcategory.dart';
import 'package:newdemo/screens/account/signin/createaccount.dart';

import 'package:newdemo/widgets/field.dart';
import 'package:newdemo/widgets/floatingarrownextbutton.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff122f51),
                ),
              ),
              SizedBox(
                height: 47,
              ),
              Field(
                boxtitle: 'Username, Email or Mobile No',
                horizontalpadding: 0,
                verticalpadding: 0,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Forgot Username?',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff757575),
                ),
              ),
              SizedBox(
                height: 55,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Sign in with Social',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff757575),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          alignment: Alignment.center,
                          iconSize: 35,
                          icon: Image.asset('asset/icons/google-plus.png'),
                          onPressed: () {},
                        ),
                        IconButton(
                          alignment: Alignment.center,
                          iconSize: 35,
                          icon: Image.asset('asset/icons/facebook.png'),
                          onPressed: () {},
                        ),
                        IconButton(
                          alignment: Alignment.center,
                          iconSize: 35,
                          icon: Image.asset('asset/icons/linkedin.png'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff757575),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateAccount(),
                          ),
                        );
                      },
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff122f51),
                        ),
                      ),
                    ),
                  ],
                ),
              )
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
              builder: (context) => RegistrationCategory(),
            ),
          ),
        },
      ),
    );
  }
}
