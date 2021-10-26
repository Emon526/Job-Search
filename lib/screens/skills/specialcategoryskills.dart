// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:newdemo/model/skillmodel.dart';
import 'package:newdemo/screens/account/signin/createaccount.dart';
import 'package:newdemo/widgets/floatingarrownextbutton.dart';
import 'package:newdemo/widgets/progressindicator.dart';
import 'package:newdemo/widgets/skillcard.dart';

class SpecialCategorySkills extends StatefulWidget {
  const SpecialCategorySkills({Key? key}) : super(key: key);

  @override
  _SpecialCategorySkillsState createState() => _SpecialCategorySkillsState();
}

class _SpecialCategorySkillsState extends State<SpecialCategorySkills> {
  final _list = Skill.speciallistValue();
  var selected;
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.035,
            ),
            CustomProgressIndicator(value: 0.5),
            SizedBox(
              height: size.height * 0.055,
            ),
            Text(
              'Select skills from the list',
              style: TextStyle(fontSize: 21),
            ),
            SizedBox(
              height: size.height * 0.040,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.58,
              child: ListView.builder(
                itemCount: _list.length,
                itemBuilder: (context, index) {
                  var list = _list[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = index;
                      });
                    },
                    child: SkillCard(
                      bordercolor: selected == index
                          ? Color(0xff2e64a4)
                          : Colors.grey.withOpacity(0.7),
                      textcolor:
                          selected == index ? Colors.white : Colors.black,
                      color:
                          selected == index ? Color(0xff2e64a4) : Colors.white,
                      text: list.name,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingArrowNextButton(
        icon: Icons.arrow_forward,
        onpress: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateAccount(),
            ),
          ),
        },
      ),
    );
  }
}
