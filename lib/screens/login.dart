import 'package:flutter/material.dart';
import 'package:sarvali_alumni/screens/home.dart';
import 'package:sarvali_alumni/screens/otp.dart';
import 'package:sarvali_alumni/screens/signup.dart';
import 'package:sarvali_alumni/widgets/textwidget.dart';
import 'package:sarvali_alumni/widgets/basicbutton.dart';
import 'package:sarvali_alumni/widgets/doubletext.dart';

class Login extends StatefulWidget {
  static const String id = 'login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _userid = TextEditingController();
  final _password = TextEditingController();
  String errorText;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: <Widget>[
        // Image.asset(
        //   "resources/background.png",
        //   height: MediaQuery.of(context).size.height,
        //   width: MediaQuery.of(context).size.width,
        //   fit: BoxFit.cover,
        // ),
        Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: 120,
                      image: AssetImage('images/sarvalilogo.jpeg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'SARVAIL ALUMNI',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    TextWidget(
                      controller: _userid,
                      errorText: errorText,
                      label: 'UserId *',
                    ),
                    TextWidget(
                      controller: _password,
                      errorText: errorText,
                      label: 'Password *',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    BasicButton(
                      label: 'Log In',
                      onPressed: () {
                        Navigator.popAndPushNamed(context, HomePage.id);
                      },
                    ),
                    DoubleText(
                      first: 'Forgot Password?',
                      last: 'Login with OTP',
                      onTap: () {
                        Navigator.popAndPushNamed(context, Otp.id);
                      },
                    ),
                    DoubleText(
                      onTap: () {
                        Navigator.popAndPushNamed(context, SignUp.id);
                      },
                      first: "Don't have an account?",
                      last: 'Sign Up',
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
