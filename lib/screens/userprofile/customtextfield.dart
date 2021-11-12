// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final VoidCallback? ontap;
  final TextEditingController controller;
  final String validatortext;
  final String lebeltext;
  final String hinttext;

  const CustomTextField({
    Key? key,
    this.ontap,
    required this.controller,
    required this.validatortext,
    required this.hinttext,
    required this.lebeltext,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  var datainputted = false;
  var focused = false;
  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        if (hasFocus) {
          setState(() {
            focused = true;
          });
        } else {
          setState(() {
            focused = false;
          });
        }
      },
      child: TextFormField(
        autofocus: false,
        onTap: widget.ontap,
        controller: widget.controller,
        validator: (value) {
          if (value!.isEmpty || !value.contains('')) {
            return widget.validatortext;
          } else {
            return null;
          }
        },
        onChanged: (text) => {
          if (widget.controller.text.isNotEmpty)
            {
              setState(() {
                datainputted = true;
              }),
            }
          else
            {
              setState(() {
                datainputted = false;
              }),
            },
        },
        decoration: InputDecoration(
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red.withOpacity(0.5),
              width: 1.5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red.withOpacity(0.6),
              width: 1.5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: datainputted
                  ? Color(0xff122f51)
                  : Colors.grey.withOpacity(0.6),
              width: 1.5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: datainputted
                  ? Color(0xff122f51)
                  : Colors.grey.withOpacity(0.6),
              width: 1.5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          labelText: widget.lebeltext,
          hintText: widget.hinttext,
          hintStyle: TextStyle(
            color: Colors.grey.withOpacity(0.6),
            fontWeight: FontWeight.w500,
          ),
          labelStyle: TextStyle(
            fontSize: 14,
            color: focused || datainputted
                ? Color(0xff122f51)
                : Colors.black.withOpacity(0.5),
            fontWeight: FontWeight.w600,
          ),
          suffixIcon: widget.controller.text.isNotEmpty
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.controller.clear();
                      datainputted = false;
                    });
                  },
                  child: Icon(
                    Icons.close,
                    color: Color(0xff122f51),
                  ),
                )
              : SizedBox(
                  width: 0,
                ),
        ),
      ),
    );
  }
}
