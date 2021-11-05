// ignore_for_file: prefer_final_fields, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:newdemo/model/hotjobsmodel.dart';
import 'package:newdemo/widgets/hotjobscard.dart';

class HotJobs extends StatefulWidget {
  const HotJobs({Key? key}) : super(key: key);

  @override
  _HotJobsState createState() => _HotJobsState();
}

class _HotJobsState extends State<HotJobs> {
  final _joblist = HotJobsmodel.gotjobslistvalur();
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
          child: Text('Hot Jobs'),
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
          Card(
            elevation: 10,
            margin: EdgeInsets.only(bottom: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(0.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 8,
              ),
              child: Row(
                children: [
                  Text(
                    '175',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    'New Job',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: size.height * 0.747,
            child: ListView.builder(
              itemCount: _joblist.length,
              itemBuilder: (BuildContext ctx, int index) {
                return HotJobsCard(
                  title: _joblist[index].title,
                  description: _joblist[index].description,
                  logo: _joblist[index].logo,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
