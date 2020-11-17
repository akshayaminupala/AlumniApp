import 'package:flutter/material.dart';
import 'package:sarvali_alumni/screens/home.dart';
import 'package:sarvali_alumni/screens/search.dart';
import 'package:sarvali_alumni/widgets/showcontent.dart';
import 'package:sarvali_alumni/widgets/sidemenu.dart';

class OtherProfile extends StatefulWidget {
  static const String id = 'otherprofileprofile';
  @override
  _OtherProfileState createState() => _OtherProfileState();
}

class _OtherProfileState extends State<OtherProfile> {
  final double circleRadius = 150.0;
  final double circleBorderWidth = 2.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(context, HomePage.id);
            },
            child: Image(
              height: 35,
              image: AssetImage('images/sarvali.jpeg'),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              height: 175,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/wood.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              height: MediaQuery.of(context).size.height - 125,
              top: 100,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: circleRadius / 2.0),
                    child: Container(
                      //replace this Container with your Card

                      width: double.infinity,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Text(
                              'Anirudh Ani',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '(SSC 2010)',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 16),
                            ),
                            DefaultTabController(
                              length: 2,
                              child: SizedBox(
                                height: 900.0,
                                child: Column(
                                  children: <Widget>[
                                    TabBar(
                                      tabs: <Widget>[
                                        Tab(
                                          text: "Personal Details",
                                        ),
                                        Tab(
                                          text: "Professional Details",
                                        )
                                      ],
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        children: <Widget>[
                                          Container(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  DetailsWidget(
                                                    label: 'First Name:',
                                                    content: 'admin',
                                                  ),
                                                  DetailsWidget(
                                                    label: 'Last Name:',
                                                    content: '',
                                                  ),
                                                  DetailsWidget(
                                                    label: 'Batch:',
                                                    content: '2010',
                                                  ),
                                                  DetailsWidget(
                                                    label: 'Mobile:',
                                                    content: '9102930102',
                                                  ),
                                                  DetailsWidget(
                                                    label: 'Email:',
                                                    content: 'Abc@gmail.com',
                                                  ),
                                                  DetailsWidget(
                                                    label: 'Lives in:',
                                                    content: 'Hyd',
                                                  ),
                                                  DetailsWidget(
                                                    label: 'State:',
                                                  ),
                                                  DetailsWidget(
                                                    label: 'Address:',
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  DetailsWidget(
                                                    label: 'Profession:',
                                                    content: 'admin',
                                                  ),
                                                  DetailsWidget(
                                                    label: 'Specialization:',
                                                    content: '',
                                                  ),
                                                  DetailsWidget(
                                                    label: 'Organisation:',
                                                  ),
                                                  DetailsWidget(
                                                    label: 'Designation:',
                                                  ),
                                                  DetailsWidget(
                                                    label: 'Office Phone:',
                                                    content: '999029923',
                                                  ),
                                                  DetailsWidget(
                                                    label: 'Office address:',
                                                  ),
                                                  DetailsWidget(
                                                    label: 'work State',
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: circleRadius,
                    height: circleRadius,
                    decoration: ShapeDecoration(
                        shape: CircleBorder(), color: Colors.white),
                    child: Padding(
                      padding: EdgeInsets.all(circleBorderWidth),
                      child: DecoratedBox(
                        decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'images/charminar.jpg',
                                ))),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({Key key, this.label, this.content}) : super(key: key);
  final String label;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 7),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: TextStyle(color: Colors.orange, fontSize: 16),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              content ?? "",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
