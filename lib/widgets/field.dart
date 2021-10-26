// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  final String boxtitle;

  final String validatortext;
  final TextEditingController controller;
  final TextInputType? keyboardtype;

  final double horizontalpadding;
  final double verticalpadding;
  const Field({
    Key? key,
    required this.boxtitle,
    required this.horizontalpadding,
    required this.verticalpadding,
    required this.validatortext,
    required this.controller,
    this.keyboardtype,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalpadding,
        vertical: verticalpadding,
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardtype,
        validator: (value) {
          if (value!.isEmpty || !value.contains('')) {
            return validatortext;
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 0.5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.5),
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          labelText: boxtitle,
          labelStyle: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
