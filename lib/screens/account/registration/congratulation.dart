// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:newdemo/widgets/centericonfullwidthbutton.dart';
import 'package:lottie/lottie.dart';

class Congratulations extends StatefulWidget {
  const Congratulations({Key? key}) : super(key: key);

  @override
  _CongratulationsState createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Lottie.asset(
                'asset/lottiefiles/congratulation.json',
              ),
              Text(
                'Congratulations!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Your account has been created successfully',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              CenterIconFullWidthButton(
                  iconandtextspace: 10,
                  buttonheight: 35,
                  buttonicon: Icons.search,
                  elevation: 6,
                  buttontext: 'Find favorite jobs',
                  buttoncolor: Color(0xff2e64a4),
                  bordercolor: Colors.transparent,
                  onpress: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
