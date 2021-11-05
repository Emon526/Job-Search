// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, avoid_unnecessary_containers, unused_field, unused_local_variable

import 'package:flutter/material.dart';
import 'package:newdemo/model/profilestatmodel.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final _statlist = Stats.statslistValue();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff122f51),
        title: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text('Profile'),
        ),
        actions: [
          SizedBox(
            width: 45,
            child: GestureDetector(
              child: Icon(
                Icons.search,
                size: 30,
              ),
              onTap: () {},
            ),
          ),
          SizedBox(
            width: 45,
            child: GestureDetector(
              child: Icon(
                Icons.notifications,
                size: 30,
              ),
              onTap: () {},
            ),
          ),
          SizedBox(
            width: 45,
            child: GestureDetector(
              child: Icon(
                Icons.account_circle,
                size: 30,
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
      // body: Column(
      //   children: [
      //     SizedBox(
      //       height: 70,
      //     ),
      //     Container(
      //       padding: EdgeInsets.symmetric(
      //         horizontal: 25,
      //       ),
      //       color: Colors.red,
      //       width: double.infinity,
      //       height: 470,
      //       child: GridView.builder(
      //         physics: NeverScrollableScrollPhysics(),

      //         // shrinkWrap: true,
      //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //           crossAxisCount: 2,
      //           crossAxisSpacing: 10.0,
      //           mainAxisSpacing: 10.0,
      //         ),
      //         itemCount: 6,
      //         itemBuilder: (context, index) {
      //           return ProfileGridViewcard(
      //             count: _statlist[index].count,
      //             titile: _statlist[index].title,
      //             icon: _statlist[index].icon,
      //           );
      //         },
      //       ),
      //     ),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(
          Icons.manage_accounts,
          size: 30,
        ),
        onPressed: () {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (ctx) {
              return AlertDialog(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Manage Resume',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.close,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    )
                  ],
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.7),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.edit,
                              color: Colors.black.withOpacity(0.6),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Edit Resume',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.7),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.visibility,
                              color: Colors.black.withOpacity(0.6),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'View Resume',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.7),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.cloud_upload,
                              color: Colors.black.withOpacity(0.6),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Upload Resume',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
