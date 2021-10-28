// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newdemo/screens/auth/registration/contactdetails.dart';
import 'package:newdemo/widgets/informationlisttile.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Personal Information',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),

                InformationListTile(
                  icon: Icons.person,
                  title: 'Personal Details',
                  onpress: () {},
                ),
                InformationListTile(
                  icon: Icons.perm_contact_calendar,
                  title: 'Contact Details',
                  onpress: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactDetails(),
                      ),
                    ),
                  },
                ),
                InformationListTile(
                  icon: Icons.description,
                  title: 'Career and Application Details',
                  onpress: () {},
                ),
                InformationListTile(
                  icon: Icons.pin_drop_outlined,
                  title: 'Preferred Areas',
                  onpress: () {},
                ),
                InformationListTile(
                  icon: Icons.info,
                  title: 'Other Relavant Information',
                  onpress: () {},
                ),
                SizedBox(
                  height: size.height * 0.065,
                ),

                //  EDU
                Text('Education / Training',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    )),
                SizedBox(
                  height: size.height * 0.020,
                ),

                InformationListTile(
                  icon: Icons.school,
                  title: 'Academic Qualification',
                  onpress: () {},
                ),
                InformationListTile(
                  icon: Icons.fact_check_outlined,
                  title: 'Training Summary',
                  onpress: () {},
                ),
                InformationListTile(
                  icon: Icons.card_membership_outlined,
                  title: 'Professional Certification Summary',
                  onpress: () {},
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),

                SizedBox(
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey.withOpacity(0.7),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
                Text('Emoployment History',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    )),
                SizedBox(
                  height: size.height * 0.020,
                ),

                InformationListTile(
                  icon: Icons.badge,
                  title: 'Employment History',
                  onpress: () {},
                ),
                InformationListTile(
                  icon: Icons.military_tech_outlined,
                  title: 'Emplayment History ( Retired Army Person)',
                  onpress: () {},
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                SizedBox(
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey.withOpacity(0.7),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
                Text('Other Information',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    )),
                SizedBox(
                  height: size.height * 0.020,
                ),

                InformationListTile(
                  icon: Icons.stars,
                  title: 'Specialization',
                  onpress: () {},
                ),
                InformationListTile(
                  icon: Icons.language,
                  title: 'Language Proficiency',
                  onpress: () {},
                ),
                InformationListTile(
                  icon: Icons.group,
                  title: 'References',
                  onpress: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
