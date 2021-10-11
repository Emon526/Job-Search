// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:newdemo/widgets/customcardshape.dart';

class RegestrationCategoryCard extends StatelessWidget {
  final Color? cardcolor;
  final double? elevation;
  final IconData? iconData;
  final String categorytitle;
  final String categorysubtitle;
  final Color customdesignstartColor;
  final Color customdesignendColor;
  final Color? titleColor;
  final Color? subtitleColor;
  final Color? iconColor;
  final VoidCallback onpressed;

  const RegestrationCategoryCard({
    Key? key,
    this.cardcolor,
    this.elevation,
    this.iconData,
    required this.categorytitle,
    required this.categorysubtitle,
    required this.customdesignstartColor,
    required this.customdesignendColor,
    this.titleColor,
    this.subtitleColor,
    this.iconColor,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onpressed,
      child: Container(
        height: size.height * 0.155,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: elevation,
          color: cardcolor,
          child: Row(
            children: [
              Stack(
                children: [
                  RotatedBox(
                    quarterTurns: 2,
                    child: CustomPaint(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 18,
                          left: 12,
                        ),
                        child: RotatedBox(
                          quarterTurns: 2,
                          child: Icon(
                            iconData,
                            size: 70,
                            color: iconColor,
                          ),
                        ),
                      ),
                      size: Size(100, 150),
                      painter: CustomCardShapePainter(
                        5,
                        customdesignstartColor,
                        customdesignendColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 1,
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categorytitle,
                    style: TextStyle(
                        color: titleColor,
                        fontSize: size.height * 0.025,
                        fontWeight: FontWeight.bold),
                  ),
                  // AnimatedTextKit(
                  //   animatedTexts: categorysubtitle,
                  // ),

                  Container(
                    width: MediaQuery.of(context).size.width * 0.60,
                    padding: EdgeInsets.only(right: 15.0),
                    child: Text(
                      categorysubtitle,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: subtitleColor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
