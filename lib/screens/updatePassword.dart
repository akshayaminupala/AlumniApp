import 'package:flutter/material.dart';
import 'package:sarvali_alumni/widgets/basicbutton.dart';
import 'package:sarvali_alumni/widgets/textwidget.dart';

class UpdatePassword extends StatefulWidget {
  static const String id = 'updatepassword';
  @override
  _UpdatePasswordState createState() => _UpdatePasswordState();
}

class _UpdatePasswordState extends State<UpdatePassword> {
  final _confirmPassword = TextEditingController();
  final _password = TextEditingController();
  String errorText;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Image(
            height: 35,
            image: AssetImage('images/sarvali.jpeg'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  height: 150,
                  image: AssetImage('images/sarvalilogo.jpeg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Update Password',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                TextWidget(
                    controller: _password,
                    errorText: errorText,
                    label: 'New Password *'),
                TextWidget(
                    controller: _confirmPassword,
                    errorText: errorText,
                    label: 'Confirm Password *'),
                SizedBox(
                  height: 30,
                ),
                BasicButton(
                  label: 'Save',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
