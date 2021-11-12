// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_init_to_null

import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:newdemo/screens/userprofile/customtextfield.dart';
import 'package:newdemo/widgets/floatingarrownextbutton.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  _PersonalDetailsState createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  final TextEditingController _firstnamecontroller = TextEditingController();
  final TextEditingController _lastnamecontroller = TextEditingController();
  final TextEditingController _fathernamecontroller = TextEditingController();
  final TextEditingController _mothernamecontroller = TextEditingController();
  final TextEditingController _birthdatecontroller = TextEditingController();
  final TextEditingController _religioncontroller = TextEditingController();
  final TextEditingController _nationalitycontroller = TextEditingController();
  final TextEditingController _nationalidcontroller = TextEditingController();
  late var genderselected = null;
  var materialstatusselected = null;
  final List<String> _genderlist = ['Male', 'Female', 'Other'];
  final List<String> _maritalstatuslist = ['Married', 'Unmarried', 'Single'];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xff122f51),
        title: Text('Personal Details'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: CustomTextField(
                          hinttext: 'First Name',
                          lebeltext: 'First Name *',
                          validatortext: 'Please Input First Name',
                          controller: _firstnamecontroller,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        flex: 1,
                        child: CustomTextField(
                          hinttext: 'Last Name',
                          lebeltext: 'Last Name *',
                          validatortext: 'Please Input Last Name',
                          controller: _lastnamecontroller,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hinttext: 'Father\'s Name',
                    lebeltext: 'Father\'s Name',
                    validatortext: 'Please Input Father Name',
                    controller: _fathernamecontroller,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hinttext: 'Mother\'s Name',
                    lebeltext: 'Mother\'s Name',
                    validatortext: 'Please Input Mother Name',
                    controller: _mothernamecontroller,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: CustomTextField(
                          ontap: () async {
                            var datePicked =
                                await DatePicker.showSimpleDatePicker(
                              context,
                              // backgroundColor: Colors.red,
                              // itemTextStyle: TextStyle(
                              //   color: Colors.white,
                              // ),
                              // pickerMode: DateTimePickerMode.datetime,
                              titleText: 'Date of Birth',
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1960),
                              lastDate: DateTime.now(),
                              // dateFormat: "dd-MMMM-yyyy",
                              dateFormat: "dd-MMMM-yyyy",
                              // locale: DateTimePickerLocale.en_us,
                              looping: true,
                              textColor: Colors.black,
                            );

                            // final snackBar = SnackBar(
                            //     content: Text("Date Picked $datePicked"));
                            // ScaffoldMessenger.of(context)
                            //     .showSnackBar(snackBar);
                            setState(() {
                              _birthdatecontroller.text =
                                  datePicked!.toString().substring(0, 10);
                            });
                          },
                          hinttext: 'Date of Birth',
                          lebeltext: 'Date of Birth *',
                          validatortext: 'Please Input Date of Birth',
                          controller: _birthdatecontroller,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        flex: 1,
                        child: CustomTextField(
                          hinttext: 'Religion',
                          lebeltext: 'Religion',
                          validatortext: 'Please Input Your Religion',
                          controller: _religioncontroller,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Gender *',
                    style: TextStyle(
                      color: Color(0xff122f51),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              genderselected = index;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            height: size.height * 0.035,
                            margin: EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                            // width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: genderselected == index
                                  ? Border.all(
                                      color: Color(0xff2e64a4),
                                    )
                                  : Border.all(
                                      color: Colors.grey.withOpacity(0.5)),
                              color: genderselected == index
                                  ? Color(0xff2e64a4)
                                  : Colors.white,
                            ),

                            child: Center(
                              child: Text(
                                _genderlist[index],
                                style: TextStyle(
                                  color: genderselected == index
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        width: 15,
                      ),
                      itemCount: _genderlist.length,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Marital Status *',
                    style: TextStyle(
                      color: Color(0xff122f51),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              materialstatusselected = index;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            height: size.height * 0.035,
                            margin: EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                            // width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: materialstatusselected == index
                                  ? Border.all(
                                      color: Color(0xff2e64a4),
                                    )
                                  : Border.all(
                                      color: Colors.grey.withOpacity(0.5)),
                              color: materialstatusselected == index
                                  ? Color(0xff2e64a4)
                                  : Colors.white,
                            ),

                            child: Center(
                              child: Text(
                                _maritalstatuslist[index],
                                style: TextStyle(
                                  color: materialstatusselected == index
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        width: 15,
                      ),
                      itemCount: _genderlist.length,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hinttext: 'Nationality *',
                    lebeltext: 'Nationality *',
                    validatortext: 'Please Input Your Nationality',
                    controller: _nationalitycontroller,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hinttext: 'National Id No',
                    lebeltext: 'National Id No',
                    validatortext: 'Please Input Your National ID',
                    controller: _nationalidcontroller,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                bottom: 20,
              ),
              child: FloatingArrowNextButton(
                onpress: () {},
                icon: Icons.done,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage('asset/images/vimad.jpg'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
