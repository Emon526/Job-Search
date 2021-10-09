// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_null_comparison

import 'package:flutter/material.dart';

class DropDowntest extends StatefulWidget {
  const DropDowntest({Key? key}) : super(key: key);

  @override
  _DropDowntestState createState() => _DropDowntestState();
}

class _DropDowntestState extends State<DropDowntest> {
  String _dropDownValue = 'Job Title';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            padding: EdgeInsets.all(5),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: Text(
                  _dropDownValue,
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                isExpanded: true,
                iconSize: 30.0,
                style: TextStyle(
                  color: Colors.blue,
                ),
                items: ['One', 'Two', 'Three'].map(
                  (val) {
                    return DropdownMenuItem<String>(
                      value: val,
                      child: Text(val),
                    );
                  },
                ).toList(),
                onChanged: (String? val) {
                  setState(
                    () {
                      _dropDownValue = val!;
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
