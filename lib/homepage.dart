// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:newdemo/widgets/custombutton.dart';
import 'package:newdemo/widgets/field.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    'Present Address *',
                  ),
                ),
                Field(
                  boxtitle: 'District *',
                  padding: 10,
                ),
                Field(
                  boxtitle: 'Thana *',
                  padding: 10,
                ),
                Field(
                  boxtitle: 'House No./ Road /Village *',
                  padding: 10,
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    'Permanent Address *',
                  ),
                ),
                Field(
                  boxtitle: 'District *',
                  padding: 10,
                ),
                Field(
                  boxtitle: 'Thana *',
                  padding: 10,
                ),
                Field(
                  boxtitle: 'House No./ Road /Village *',
                  padding: 10,
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    'Mobile Number',
                  ),
                ),
                Field(
                  boxtitle: 'Mobile No',
                  padding: 10,
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
                  boxtitle: 'Primary Email Address ',
                  padding: 10,
                ),
                SizedBox(
                  height: 5,
                ),
                CustomButton(
                  icon: Icons.email,
                  text: 'Add Email Address',
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () => {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => ,
          //   ),
          // ),
        },
        child: Icon(
          Icons.done_rounded,
          size: 40,
        ),
      ),
    );
  }
}
