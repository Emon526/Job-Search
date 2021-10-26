// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  final String boxtitle;
  final bool? enabled;
  final bool obscureText;
  final Function(String)? onchanged;
  final TextStyle? style;

  final String validatortext;
  final TextEditingController controller;
  final TextInputType? keyboardtype;
  final TextInputAction? textInputAction;
  final Widget? prefixicon;
  final Widget? sufixicon;
  final Color fillcolor;
  final Color levelcolor;

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
    this.textInputAction,
    this.prefixicon,
    this.enabled,
    this.onchanged,
    this.style,
    required this.fillcolor,
    required this.obscureText,
    this.sufixicon,
    required this.levelcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalpadding,
        vertical: verticalpadding,
      ),
      child: TextFormField(
        obscureText: obscureText,
        style: style,
        enabled: enabled,
        controller: controller,
        keyboardType: keyboardtype,
        textInputAction: textInputAction,
        validator: (value) {
          if (value!.isEmpty || !value.contains('')) {
            return validatortext;
          } else {
            return null;
          }
        },
        onChanged: onchanged,
        decoration: InputDecoration(
          filled: true,
          fillColor: fillcolor,
          prefixIcon: prefixicon,
          suffixIcon: sufixicon,
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.5),
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.5),
              width: 1.0,
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
            color: levelcolor,
          ),
        ),
      ),
    );
  }
}
