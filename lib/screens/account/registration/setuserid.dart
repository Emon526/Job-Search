// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:newdemo/screens/account/registration/congratulation.dart';
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
  var emailvalue = '';
  var mobilevalue = '';
  var _passwordVisible = false;

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
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              CustomProgressIndicator(
                value: 0.2,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Set as User ID (Email Address /\nMobile)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: emailvalue != '' ? Color(0xff2e64a4) : Colors.grey,
                  ),
                  color: emailvalue != '' ? Color(0xff2e64a4) : Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    style: TextStyle(
                      color: emailvalue != '' ? Colors.white : Colors.grey,
                    ),
                    controller: _emailaddress,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (text) => {
                      setState(() {
                        emailvalue = text;
                      }),
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email Address',
                      icon: Icon(
                        Icons.mail,
                        color: emailvalue != '' ? Colors.white : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: mobilevalue != '' ? Color(0xff2e64a4) : Colors.grey,
                  ),
                  color: mobilevalue != '' ? Color(0xff2e64a4) : Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    style: TextStyle(
                      color: mobilevalue != '' ? Colors.white : Colors.grey,
                    ),
                    controller: _mobilenumber,
                    keyboardType: TextInputType.number,
                    onChanged: (text) => {
                      setState(() {
                        mobilevalue = text;
                      }),
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Mobile Number',
                      icon: Icon(
                        Icons.phone_android_rounded,
                        color: mobilevalue != '' ? Colors.white : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Type Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Use at least 8 to 12 characters'),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: _userPasswordController1,
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: _userPasswordController2,
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Helpline()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingArrowNextButton(
        icon: Icons.arrow_forward,
        onpress: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Congratulations(),
            ),
          );
        },
      ),
    );
  }
}
