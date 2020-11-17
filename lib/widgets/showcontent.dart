import 'package:flutter/material.dart';
import 'package:sarvali_alumni/screens/login.dart';
import 'package:sarvali_alumni/screens/profile.dart';

void showcontent(BuildContext context) {
  showDialog(
    context: context, barrierDismissible: true, // user must tap button!

    builder: (BuildContext context) {
      return new AlertDialog(
        content: new SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(context, Profile.id);
                },
                child: Text('Profile'),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(context, Login.id);
                },
                child: Text('Logout'),
              ),
            ],
          ),
        ),
      );
    },
  );
}
