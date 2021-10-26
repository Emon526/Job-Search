// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:newdemo/screens/account/registration/registrationcategory.dart';
import 'package:newdemo/screens/account/signin/createaccount.dart';

import 'package:newdemo/widgets/field.dart';
import 'package:newdemo/widgets/floatingarrownextbutton.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);
  final TextEditingController _usernamecontroller = TextEditingController();

  final _signinformkey = GlobalKey<FormState>();

  void _submitdata() {
    final isActive = _signinformkey.currentState!.validate();
    print(isActive);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                height: size.height * 0.065,
              ),
              Form(
                key: _signinformkey,
                child: Field(
                  fillcolor: Colors.transparent,
                  levelcolor: Colors.grey,
                  obscureText: false,
                  controller: _usernamecontroller,
                  validatortext: 'Enter Your Username, Email or Mobile No',
                  boxtitle: 'Username, Email or Mobile No',
                  horizontalpadding: 0,
                  verticalpadding: 0,
                ),
              ),
              SizedBox(
                height: size.height * 0.020,
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
                height: size.height * 0.075,
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
                      height: size.height * 0.025,
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
                      height: size.height * 0.025,
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
                      height: size.height * 0.025,
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
          _submitdata(),
          if (_usernamecontroller.text.isNotEmpty)
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegistrationCategory(),
                ),
              ),
            },
        },
      ),
    );
  }
}
