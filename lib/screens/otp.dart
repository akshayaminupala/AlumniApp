import 'package:flutter/material.dart';
import 'package:sarvali_alumni/screens/home.dart';
import 'package:sarvali_alumni/screens/login.dart';
import 'package:sarvali_alumni/screens/signup.dart';
import 'package:sarvali_alumni/widgets/textwidget.dart';
import 'package:sarvali_alumni/widgets/basicbutton.dart';
import 'package:sarvali_alumni/widgets/doubletext.dart';

class Otp extends StatefulWidget {
  static const String id = 'Otp';
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final _userid = TextEditingController();
  final _otp = TextEditingController();
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
                    Container(
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        controller: _otp,
                        onChanged: (value) {
                          if (value.length == 0) {
                            setState(() {
                              errorText = 'The Field is Mandatory';
                            });
                          } else {
                            setState(() {
                              errorText = null;
                            });
                          }
                        },
                        decoration: InputDecoration(
                          suffix: Container(
                            height: 30,
                            width: 120,
                            child: FlatButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              splashColor: Colors.blueAccent,
                              onPressed: () {},
                              child: Text(
                                "Generate Otp",
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ),
                          ),
                          hintText: 'Enter OTP *',
                          errorText: errorText,
                        ),
                      ),
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
                      first: 'Have a Password?',
                      last: 'Login with Password',
                      onTap: () {
                        Navigator.popAndPushNamed(context, Login.id);
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
