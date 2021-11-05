// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:newdemo/screens/userhome/searchjob.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Image.asset(
                'asset/images/usercard.jpg',
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    // CircleAvatar(
                    //   backgroundColor: Colors.transparent,
                    //   backgroundImage: AssetImage(
                    //     'asset/images/logo1.png',
                    //   ),
                    //   // child: Image.asset(
                    //   //   'asset/images/logo1.png',
                    //   // ),
                    // ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Marium Mitu',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'marium@pencilbox.edu.bd',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: size.height * 0.15,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 50,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 3,
            ),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.blue,
                width: 10,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.sell,
                  size: 20,
                  color: Colors.black.withOpacity(0.6),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Dhaka,Bangladesh',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 50,
            ),
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.blue,
                width: 10,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.work,
                  size: 20,
                  color: Colors.black.withOpacity(0.6),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Organization Type',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          ElevatedButton.icon(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(
                4,
              ),
              backgroundColor: MaterialStateProperty.all(
                Colors.red,
              ),
              textStyle: MaterialStateProperty.all(
                const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserSearchJob(),
                ),
              );
            },
            icon: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 2,
              ),
              child: Icon(
                Icons.search,
              ),
            ),
            label: Text(
              'Search Job',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ElevatedButton.icon(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(
                4,
              ),
              backgroundColor: MaterialStateProperty.all(
                Colors.red,
              ),
              textStyle: MaterialStateProperty.all(
                const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            onPressed: () {},
            icon: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 5,
              ),
              child: Icon(
                Icons.post_add,
              ),
            ),
            label: Text(
              'Post a Job',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
