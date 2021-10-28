// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
import 'package:newdemo/screens/auth/registration/congratulation.dart';
import 'package:newdemo/widgets/field.dart';
import 'package:newdemo/widgets/floatingarrownextbutton.dart';
import 'package:newdemo/widgets/helpline.dart';
import 'package:newdemo/widgets/progressindicator.dart';

class SetUserID extends StatefulWidget {
  const SetUserID({Key? key}) : super(key: key);

  @override
  _SetUserIDState createState() => _SetUserIDState();
}

class _SetUserIDState extends State<SetUserID> {
  final _mobilenumber = TextEditingController();
  final _emailaddress = TextEditingController();

  final _userPasswordController1 = TextEditingController();
  final _userPasswordController2 = TextEditingController();
  var _passwordVisible = false;
  var emaildatainputted = true;
  var passdatainputted = true;
  final _useridformkey = GlobalKey<FormState>();

  void _submitdata() {
    final isActive = _useridformkey.currentState!.validate();
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
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.020,
              ),
              CustomProgressIndicator(
                value: 0.2,
              ),
              SizedBox(
                height: size.height * 0.040,
              ),
              Text(
                'Set as User ID (Email Address /\nMobile)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: size.height * 0.020,
              ),
              Form(
                key: _useridformkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Field(
                      levelcolor: _emailaddress.text.isNotEmpty
                          ? Colors.white
                          : Colors.grey,
                      obscureText: false,
                      fillcolor: _emailaddress.text.isNotEmpty
                          ? Color(0xff2e64a4)
                          : Colors.white,
                      style: TextStyle(
                        color: _emailaddress.text.isNotEmpty
                            ? Colors.white
                            : Colors.grey,
                      ),
                      enabled: emaildatainputted,
                      keyboardtype: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      onchanged: (text) => {
                        if (_emailaddress.text.isNotEmpty)
                          {
                            setState(() {
                              passdatainputted = false;
                            }),
                          }
                        else
                          {
                            setState(() {
                              passdatainputted = true;
                            }),
                          },
                      },
                      boxtitle: 'Email Address',
                      horizontalpadding: 0,
                      verticalpadding: 0,
                      validatortext: 'Please Enter Valid Email',
                      controller: _emailaddress,
                      prefixicon: Icon(
                        Icons.mail,
                        color: _emailaddress.text.isNotEmpty
                            ? Colors.white
                            : Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.020,
                    ),
                    Field(
                      levelcolor: _mobilenumber.text.isNotEmpty
                          ? Colors.white
                          : Colors.grey,
                      obscureText: false,
                      fillcolor: _mobilenumber.text.isNotEmpty
                          ? Color(0xff2e64a4)
                          : Colors.white,
                      style: TextStyle(
                        color: _mobilenumber.text.isNotEmpty
                            ? Colors.white
                            : Colors.grey,
                      ),
                      enabled: passdatainputted,
                      keyboardtype: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      onchanged: (text) => {
                        if (_mobilenumber.text.isNotEmpty)
                          {
                            setState(() {
                              emaildatainputted = false;
                            }),
                          }
                        else
                          {
                            setState(() {
                              emaildatainputted = true;
                            }),
                          },
                      },
                      boxtitle: 'Mobile Number',
                      horizontalpadding: 0,
                      verticalpadding: 0,
                      validatortext: 'Please Enter Valid Mobile No',
                      controller: _mobilenumber,
                      prefixicon: Icon(
                        Icons.phone_android_rounded,
                        color: _mobilenumber.text.isNotEmpty
                            ? Colors.white
                            : Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.030,
                    ),
                    Text(
                      'Type Password',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.020,
                    ),
                    Text('Use at least 8 to 12 characters'),
                    SizedBox(
                      height: size.height * 0.020,
                    ),
                    Field(
                      levelcolor: Colors.grey,
                      obscureText: !_passwordVisible,
                      fillcolor: Colors.transparent,
                      boxtitle: 'Password',
                      horizontalpadding: 0,
                      verticalpadding: 0,
                      validatortext: 'Enter Password',
                      controller: _userPasswordController1,
                      keyboardtype: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      sufixicon: GestureDetector(
                        child: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onTap: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.020,
                    ),
                    Field(
                      levelcolor: Colors.grey,
                      obscureText: !_passwordVisible,
                      fillcolor: Colors.transparent,
                      boxtitle: 'Confirm Password',
                      horizontalpadding: 0,
                      verticalpadding: 0,
                      validatortext: 'Enter Confirm Password',
                      controller: _userPasswordController2,
                      keyboardtype: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      sufixicon: GestureDetector(
                        child: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onTap: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.10,
              ),
              Helpline()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingArrowNextButton(
        icon: Icons.arrow_forward,
        onpress: () => {
          _submitdata(),
          if (_emailaddress.text.isNotEmpty &&
                  _userPasswordController1.text.isNotEmpty &&
                  _userPasswordController2.text.isNotEmpty ||
              _mobilenumber.text.isNotEmpty &&
                  _userPasswordController1.text.isNotEmpty &&
                  _userPasswordController2.text.isNotEmpty)
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Congratulations(),
                ),
              ),
            },
        },
      ),
    );
  }
}
