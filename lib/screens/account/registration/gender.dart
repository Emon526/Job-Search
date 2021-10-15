// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:newdemo/model/gendermodel.dart';
import 'package:newdemo/screens/account/mobileandemail.dart';
import 'package:newdemo/widgets/floatingarrownextbutton.dart';
import 'package:newdemo/widgets/gendercard.dart';
import 'package:newdemo/widgets/helpline.dart';

class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  List<Genders> _genderlist = [
    Genders(
      'Male',
      'asset/icons/male.png',
    ),
    Genders(
      'Female',
      'asset/icons/female.png',
    ),
    Genders(
      'Other',
      'asset/icons/othergender.png',
    ),
  ];

  var selected = 0;

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
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              'Select Gender',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 200,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: _genderlist.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = index;
                      });
                    },
                    child: Gendercard(
                      border: selected == index
                          ? Border.all(
                              color: Color(0xff2e64a4),
                            )
                          : Border.all(),
                      icon: _genderlist[index].icon,
                      text: _genderlist[index].name,
                      textcolor:
                          selected == index ? Colors.white : Colors.black,
                      iconcolor:
                          selected == index ? Colors.white : Colors.black,
                      tilecolor:
                          selected == index ? Color(0xff2e64a4) : Colors.white,
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 250,
            ),
            Helpline(),
          ],
        ),
      ),
      floatingActionButton: FloatingArrowNextButton(
        icon: Icons.arrow_forward,
        onpress: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NameOrEmail(),
            ),
          ),
        },
      ),
    );
  }
}
