// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, avoid_unnecessary_containers, unused_field, unused_local_variable

import 'package:flutter/material.dart';
import 'package:newdemo/model/profilestatmodel.dart';
import 'package:newdemo/widgets/profilegridview.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile>
    with SingleTickerProviderStateMixin {
  final _statlist = Stats.statslistValue();

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

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
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            height: 45,
            width: size.width * 0.6,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(
                8.0,
              ),
            ),
            child: TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                color: Colors.black,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'This Month',
                ),
                Tab(
                  text: 'All Time',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            width: double.infinity,
            height: 540,
            child: GridView(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
              ),
              children: [
                ProfileGridViewcard(
                  color: [
                    Color(0xff162e54),
                    Color(0xff4c66ec),
                  ],
                  count: _statlist[0].count,
                  title: _statlist[0].title,
                  icon: _statlist[0].icon,
                ),
                ProfileGridViewcard(
                  color: [
                    Color(0xff98155B),
                    Color(0xffDB1D37),
                  ],
                  count: _statlist[1].count,
                  title: _statlist[1].title,
                  icon: _statlist[1].icon,
                ),
                ProfileGridViewcard(
                  color: [
                    Color(0xffB73B0D),
                    Color(0xffF9B118),
                  ],
                  count: _statlist[2].count,
                  title: _statlist[2].title,
                  // icon: _statlist[2].icon,
                ),
                ProfileGridViewcard(
                  color: [
                    Color(0xff046F75),
                    Color(0xff4CCBDB),
                  ],
                  count: _statlist[3].count,
                  title: _statlist[3].title,
                  icon: _statlist[3].icon,
                ),
                ProfileGridViewcard(
                  color: [
                    Color(0xff7618A5),
                    Color(0xffC20BE2),
                  ],
                  count: _statlist[4].count,
                  title: _statlist[4].title,
                  icon: _statlist[4].icon,
                ),
                ProfileGridViewcard(
                  color: [
                    Color(0xff3E5057),
                    Color(0xff8B9EA4),
                  ],
                  count: _statlist[5].count,
                  title: _statlist[5].title,
                  // icon: _statlist[5].icon,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(
          Icons.manage_accounts,
          size: 35,
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
