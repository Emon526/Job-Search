// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:newdemo/screens/account/registration/gender.dart';
import 'package:newdemo/model/skillmodel.dart';
import 'package:newdemo/widgets/floatingarrownextbutton.dart';
import 'package:newdemo/widgets/progressindicator.dart';

import 'package:newdemo/widgets/skillcard.dart';

class FunctionCategoryskills extends StatefulWidget {
  const FunctionCategoryskills({Key? key}) : super(key: key);

  @override
  _FunctionCategoryskillsState createState() => _FunctionCategoryskillsState();
}

class _FunctionCategoryskillsState extends State<FunctionCategoryskills> {
  final _list = Skill.functionlistValue();
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            CustomProgressIndicator(value: 0.5),
            SizedBox(
              height: 40,
            ),
            Text(
              'Select skills from the list',
              style: TextStyle(fontSize: 21),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.58,
              child: ListView.builder(
                itemCount: _list.length,
                itemBuilder: (context, index) {
                  var list = _list[index];
                  return SkillCard(
                    text: list.name,
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
              builder: (context) => Gender(),
            ),
          ),
        },
      ),
    );
  }
}
