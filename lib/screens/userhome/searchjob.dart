// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UserSearchJob extends StatefulWidget {
  const UserSearchJob({Key? key}) : super(key: key);

  @override
  _UserSearchJobState createState() => _UserSearchJobState();
}

class _UserSearchJobState extends State<UserSearchJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('User Search job'),
    );
  }
}
