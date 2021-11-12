// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:newdemo/screens/auth/registration/personaldetails.dart';
import 'package:newdemo/widgets/helpline.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
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
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PersonalDetails(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Icon(
                Icons.edit,
              ),
            ),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.bottomCenter,
                image: AssetImage('asset/images/background.jpg'))),
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
        ),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Color(0xff122f51),
                      ),
                      borderRadius: BorderRadius.circular(100)),
                  child: Icon(
                    Icons.person_add,
                    size: 80,
                    color: Color(0xff122f51),
                  ),
                ),
                Text(
                  'Marium Mitu',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black.withOpacity(0.6),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'marium@pencilbox.edu.bd',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.6),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 40,
                      ),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(
                              'asset/icons/male.png',
                            ),
                            color: Color(0xff122f51),
                            width: 30,
                          ),
                          // Icon(
                          //   Icons.person,
                          //   size: 30,
                          //   color: Color(0xff122f51),
                          // ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Father\'s Name',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 40,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.event,
                            size: 30,
                            color: Color(0xff122f51),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Date of Birth *',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 40,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.transgender,
                            size: 30,
                            color: Color(0xff122f51),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gender *',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff122f51),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 30,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.flag,
                            size: 30,
                            color: Color(0xff122f51),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Nationality *',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 40,
                      ),
                      child: Row(
                        children: [
                          // Icon(
                          //   Icons.person,
                          //   size: 30,
                          //   color: Color(0xff122f51),
                          // ),
                          Image(
                            image: AssetImage(
                              'asset/icons/female.png',
                            ),
                            color: Color(0xff122f51),
                            width: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Mother\'s Name',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 40,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.book,
                            size: 30,
                            color: Color(0xff122f51),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Religion',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 60,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.wc,
                            size: 30,
                            color: Color(0xff122f51),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Marital Status *',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 30,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.badge,
                            size: 30,
                            color: Color(0xff122f51),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'National Id No',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.040,
            ),
            Helpline(),
          ],
        ),
      ),
    );
  }
}
