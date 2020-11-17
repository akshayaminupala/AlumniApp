import 'package:flutter/material.dart';
import 'package:sarvali_alumni/screens/login.dart';
import 'package:sarvali_alumni/screens/otp.dart';
import 'package:sarvali_alumni/widgets/basicbutton.dart';
import 'package:sarvali_alumni/widgets/doubletext.dart';
import 'package:sarvali_alumni/widgets/textwidget.dart';

class SignUp extends StatefulWidget {
  static const String id = 'signup';
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _userid = TextEditingController();
  final _firstName = TextEditingController();
  final _surName = TextEditingController();
  final _batchNumber = TextEditingController();
  final _email = TextEditingController();
  final _profession = TextEditingController();
  final _confirmPassword = TextEditingController();
  final _password = TextEditingController();
  final _phone = TextEditingController();
  String errorText;
  bool checkedvalue = false;
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
                        height: 100,
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
                        controller: _firstName,
                        errorText: errorText,
                        label: 'First Name *',
                      ),
                      TextWidget(
                        controller: _surName,
                        errorText: errorText,
                        label: 'Surname *',
                      ),
                      BatchTextField(
                          controller: _batchNumber, errorText: errorText),
                      EmailTextField(controller: _email, errorText: errorText),
                      TextWidget(
                        controller: _profession,
                        errorText: errorText,
                        label: 'Profession *',
                      ),
                      TextWidget(
                        controller: _password,
                        errorText: errorText,
                        label: 'Password *',
                      ),
                      TextWidget(
                        controller: _confirmPassword,
                        errorText: errorText,
                        label: 'Confirm Password *',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Container(
                            width: 40,
                            child: TextFormField(
                              initialValue: '+91',
                              decoration: InputDecoration(
                                hintText: '+91',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Expanded(
                            child: TextWidget(
                              controller: _phone,
                              errorText: errorText,
                              label: 'Mobile Number *',
                              textInput: TextInputType.phone,
                            ),
                          )
                        ],
                      ),
                      CheckboxListTile(
                        title: Text("Hide Contact Details"),

                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool value) {
                          setState(() {
                            checkedvalue = value;
                          });
                        },
                        value: checkedvalue, //  <-- leading Checkbox
                      ),
                      BasicButton(
                        label: 'Sign Up',
                        onPressed: () {
                          Navigator.popAndPushNamed(context, Otp.id);
                        },
                      ),
                      DoubleText(
                        last: 'Back to Login',
                        onTap: () {
                          Navigator.popAndPushNamed(context, Login.id);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
