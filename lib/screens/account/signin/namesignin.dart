// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:newdemo/screens/account/registration/registrationcategory.dart';

import 'package:newdemo/widgets/field.dart';
import 'package:newdemo/widgets/floatingarrownextbutton.dart';
import 'package:newdemo/widgets/helpline.dart';

class NameSignIn extends StatefulWidget {
  const NameSignIn({Key? key}) : super(key: key);

  @override
  State<NameSignIn> createState() => _NameSignInState();
}

class _NameSignInState extends State<NameSignIn> {
  final TextEditingController _namecontroller = TextEditingController();

  final _nameloginformkey = GlobalKey<FormState>();

  void _submitdata() {
    final isActive = _nameloginformkey.currentState!.validate();
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign in',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: size.height * 0.040,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Write Name',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.035,
                  ),
                  Form(
                    key: _nameloginformkey,
                    child: Field(
                      controller: _namecontroller,
                      validatortext: 'Enter Your name',
                      boxtitle: 'Name',
                      horizontalpadding: 0,
                      verticalpadding: 0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            Helpline(),
          ],
        ),
      ),
      floatingActionButton: FloatingArrowNextButton(
        icon: Icons.arrow_forward,
        onpress: () => {
          _submitdata(),
          if (_namecontroller.text.isNotEmpty)
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
