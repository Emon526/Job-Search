// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:newdemo/widgets/custombutton.dart';
import 'package:newdemo/widgets/field.dart';
import 'package:newdemo/widgets/floatingarrownextbutton.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  _ContactDetailsState createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  final TextEditingController _presentdistrictcontroller =
      TextEditingController();
  final TextEditingController _perdistrictcontroller = TextEditingController();
  final TextEditingController _presentthanacontroller = TextEditingController();
  final TextEditingController _permanentthanacontroller =
      TextEditingController();
  final TextEditingController _premanentdistrictcontroller =
      TextEditingController();
  final TextEditingController _perhousenocontroller = TextEditingController();
  final TextEditingController _mobilecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();

  final _contactdetailsformkey = GlobalKey<FormState>();
  void _submitdata() {
    final isActive = _contactdetailsformkey.currentState!.validate();
    print(isActive);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xff122f51),
        title: Text('Contact Details'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
              key: _contactdetailsformkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    title: Text(
                      'Present Address *',
                    ),
                  ),
                  Field(
                    controller: _presentdistrictcontroller,
                    validatortext: 'Please Enter Present Address District',
                    boxtitle: 'District *',
                    horizontalpadding: 10,
                    verticalpadding: 10,
                  ),
                  Field(
                    controller: _perdistrictcontroller,
                    validatortext: 'Please Enter Present Address Thana',
                    boxtitle: 'Thana *',
                    horizontalpadding: 10,
                    verticalpadding: 10,
                  ),
                  Field(
                    controller: _presentthanacontroller,
                    validatortext: 'Please Enter Present Address House No.',
                    boxtitle: 'House No./ Road /Village *',
                    horizontalpadding: 10,
                    verticalpadding: 10,
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  ListTile(
                    title: Text(
                      'Permanent Address *',
                    ),
                  ),
                  Field(
                    controller: _premanentdistrictcontroller,
                    validatortext: 'Please Enter Permanent Address District',
                    boxtitle: 'District *',
                    horizontalpadding: 10,
                    verticalpadding: 10,
                  ),
                  Field(
                    controller: _permanentthanacontroller,
                    validatortext: 'Please Enter Permanent Address Thana',
                    boxtitle: 'Thana *',
                    horizontalpadding: 10,
                    verticalpadding: 10,
                  ),
                  Field(
                    controller: _perhousenocontroller,
                    validatortext: 'Please Enter Permanent Address House No.',
                    boxtitle: 'House No./ Road /Village *',
                    horizontalpadding: 10,
                    verticalpadding: 10,
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  ListTile(
                    title: Text(
                      'Mobile Number',
                    ),
                  ),
                  Field(
                    controller: _mobilecontroller,
                    validatortext: 'Please Enter Your Mobile No.',
                    boxtitle: 'Mobile No',
                    horizontalpadding: 10,
                    verticalpadding: 10,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomButton(
                    icon: Icons.phone,
                    text: 'Add Mobile No',
                  ),
                  ListTile(
                    title: Text(
                      'Email Address',
                    ),
                  ),
                  Field(
                    controller: _emailcontroller,
                    validatortext: 'Please Enter Your Email Address',
                    boxtitle: 'Primary Email Address ',
                    horizontalpadding: 10,
                    verticalpadding: 10,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomButton(
                    icon: Icons.email,
                    text: 'Add Email Address',
                  ),
                  SizedBox(
                    height: size.height * 0.065,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingArrowNextButton(
        onpress: () => {
          _submitdata(),
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => ,
          //   ),
          // ),
          //         _submitdata(),
          //   if (_namecontroller.text.isNotEmpty)
          //     {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => RegistrationCategory(),
          //         ),
          //       ),
          //     },
          // },
        },
        icon: Icons.done,
      ),
    );
  }
}
