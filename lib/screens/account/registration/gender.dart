// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:newdemo/model/gendermodel.dart';
import 'package:newdemo/screens/account/registration/mobileandemail.dart';
import 'package:newdemo/widgets/floatingarrownextbutton.dart';
import 'package:newdemo/widgets/gendercard.dart';
import 'package:newdemo/widgets/helpline.dart';
import 'package:newdemo/widgets/progressindicator.dart';

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
                height: size.height * 0.035,
              ),
              CustomProgressIndicator(value: 0.6),
              SizedBox(
                height: size.height * 0.065,
              ),
              Text(
                'Select Gender',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: size.height * 0.035,
              ),
              Container(
                height: size.height * 0.28,
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
                            : Border.all(color: Colors.grey.withOpacity(0.5)),
                        icon: _genderlist[index].icon,
                        text: _genderlist[index].name,
                        textcolor:
                            selected == index ? Colors.white : Colors.black,
                        iconcolor:
                            selected == index ? Colors.white : Colors.black,
                        tilecolor: selected == index
                            ? Color(0xff2e64a4)
                            : Colors.white,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.30,
              ),
              Helpline(),
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
              builder: (context) => NameOrEmail(),
            ),
          ),
        },
      ),
    );
  }
}
