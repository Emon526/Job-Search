import 'package:flutter/material.dart';

class Stats {
  String count;
  String title;
  IconData icon;

  Stats(this.count, this.title, this.icon);
  static List<Stats> statslistValue() {
    return [
      Stats(
        '13',
        'Jobs\nApplied',
        Icons.insert_drive_file,
      ),
      Stats(
        '13',
        'Times Emailed\nResume',
        Icons.send,
      ),
      Stats(
        '9',
        'Employers Viewed\nApplied',
        Icons.visibility,
      ),
      Stats(
        '7',
        'Employers\nFollowed',
        Icons.person_add,
      ),
      Stats(
        '5',
        'Interview\ninvitations',
        Icons.groups,
      ),
      Stats(
        '5',
        'Massages by\nEmployers',
        Icons.mail,
      ),
    ];
  }
}
