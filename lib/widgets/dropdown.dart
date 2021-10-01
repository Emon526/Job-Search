// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, unnecessary_null_comparison

import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  String dropDownValue;
  List listdata;
  DropDown({
    Key? key,
    required this.dropDownValue,
    required this.listdata,
  }) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          hint: widget.dropDownValue == null
              ? Text('Dropdown')
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.dropDownValue,
                    style: TextStyle(
                      color: Color(0xff757575),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
          isExpanded: true,
          iconSize: 30.0,
          style: TextStyle(
            color: Color(0xff757575),
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          items: widget.listdata.map(
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
                widget.dropDownValue = val!;
              },
            );
          },
        ),
      ),
    );
  }
}
