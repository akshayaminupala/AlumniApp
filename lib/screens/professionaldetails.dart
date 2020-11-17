import 'package:flutter/material.dart';
import 'package:sarvali_alumni/widgets/basicbutton.dart';
import 'package:sarvali_alumni/widgets/edittext.dart';

class ProfessionalDetails extends StatefulWidget {
  static const String id = 'professionaldetails';
  @override
  _ProfessionalDetailsState createState() => _ProfessionalDetailsState();
}

class _ProfessionalDetailsState extends State<ProfessionalDetails> {
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
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.blue.withOpacity(0.1),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      EditField(
                        label: 'Profession :',
                        initialValue: 'Doctor',
                      ),
                      EditField(
                        label: 'Specialisation :',
                        initialValue: 'phd',
                      ),
                      EditField(
                        label: 'Designation :',
                        initialValue: 'Random',
                      ),
                      EditField(
                        label: 'Organisation :',
                        initialValue: 'random ',
                      ),
                      EditField(
                        label: 'Office Telephone :',
                        initialValue: '203920393',
                        textInput: TextInputType.phone,
                      ),
                      EditField(
                        label: 'Office Address :',
                        initialValue: '1029/mdk',
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: EditField(
                              label: 'Work Country :',
                              initialValue: 'India',
                            ),
                          ),
                          Expanded(
                            child: EditField(
                              label: 'Work State :',
                              initialValue: 'Telangana',
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: EditField(
                              label: 'Work City:',
                              initialValue: 'hyd',
                              textInput: TextInputType.number,
                            ),
                          ),
                          Expanded(
                            child: EditField(
                              label: 'Work Pin',
                              initialValue: '3918930',
                              textInput: TextInputType.number,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Container(
                          width: 130,
                          child: RoundedButton(
                            label: ('Save'),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
