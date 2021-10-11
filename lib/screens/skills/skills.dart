// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:newdemo/screens/account/signin/createaccount.dart';
import 'package:newdemo/model/listviewe.dart';
import 'package:newdemo/widgets/floatingarrownextbutton.dart';

import 'package:newdemo/widgets/skillcard.dart';

class Skills extends StatefulWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  final _list = Skill.listValue();
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: LinearProgressIndicator(
                color: Color(0xff15a211),
                backgroundColor: Color(0xffe9e9e9),
              ),
            ),
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
              builder: (context) => CreateAccount(),
            ),
          ),
        },
      ),
    );
  }
}
