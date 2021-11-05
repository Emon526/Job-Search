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
        Icons.verified,
      ),
      Stats(
        '13',
        'Times Emailed\nResume',
        Icons.ac_unit,
      ),
      Stats(
        '9',
        'Employers Viewed\nApplied',
        Icons.safety_divider,
      ),
      Stats(
        '7',
        'Employers\nFollowed',
        Icons.ac_unit,
      ),
      Stats(
        '5',
        'Interview\ninvitations',
        Icons.ac_unit,
      ),
      Stats(
        '5',
        'Massages by\nEmployers',
        Icons.ac_unit,
      ),
    ];
  }
}
