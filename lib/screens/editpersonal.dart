import 'package:flutter/material.dart';
import 'package:sarvali_alumni/widgets/basicbutton.dart';
import 'package:sarvali_alumni/widgets/edittext.dart';

class EditPersonal extends StatefulWidget {
  static const String id = 'editpersonal';
  @override
  _EditPersonalState createState() => _EditPersonalState();
}

class _EditPersonalState extends State<EditPersonal> {
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
                      Row(
                        children: [
                          Expanded(
                            child: EditField(
                              label: 'Name :',
                              initialValue: 'Anirudh',
                            ),
                          ),
                          Expanded(
                            child: EditField(
                              initialValue: 'Ani',
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: EditField(
                              label: 'Gender :',
                              initialValue: 'Male',
                            ),
                          ),
                          Expanded(
                            child: EditField(
                              label: 'Batch :',
                              initialValue: '2010',
                              textInput: TextInputType.number,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: EditField(
                              label: 'Mobile Number:',
                              initialValue: '9246704920',
                              textInput: TextInputType.number,
                            ),
                          ),
                          Expanded(
                            child: EditField(
                              label: 'Email',
                              initialValue: 'abc@gmail.com',
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Residence Address :',
                              style: TextStyle(color: Colors.blue),
                            ),
                            SizedBox(height: 5),
                            Container(
                              child: TextFormField(
                                maxLines: 5,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 7),
                                  filled: true,
                                  hintText: 'Enter Address',
                                  fillColor: Colors.white,
                                  border: new OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(20.0),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: EditField(
                              label: 'Residence city:',
                              initialValue: 'hyderabad',
                            ),
                          ),
                          Expanded(
                            child: EditField(
                              label: 'Residence State :',
                              initialValue: 'hyd',
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: EditField(
                              label: 'Residence country:',
                              initialValue: 'India',
                            ),
                          ),
                          Expanded(
                            child: EditField(
                              label: 'Residence Pin :',
                              initialValue: '505051',
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
