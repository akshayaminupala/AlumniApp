import 'package:flutter/material.dart';
import 'package:sarvali_alumni/screens/editpersonal.dart';
import 'package:sarvali_alumni/screens/home.dart';
import 'package:sarvali_alumni/screens/professionaldetails.dart';
import 'package:sarvali_alumni/screens/search.dart';
import 'package:sarvali_alumni/screens/updatePassword.dart';
import 'package:sarvali_alumni/widgets/showcontent.dart';
import 'package:sarvali_alumni/widgets/sidemenu.dart';
import 'package:sarvali_alumni/widgets/detailsfield.dart';
import 'package:sarvali_alumni/widgets/textwidget.dart';

class Profile extends StatefulWidget {
  static const String id = 'profile';
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final double circleRadius = 150.0;
  final double circleBorderWidth = 2.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
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
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.popAndPushNamed(context, Search.id);
              },
              child: Icon(Icons.search),
            ),
            GestureDetector(
              onTap: () {
                showcontent(context);
              },
              child: CircleAvatar(
                child: Icon(
                  Icons.supervised_user_circle_sharp,
                  color: Colors.grey,
                ),
                backgroundColor: Colors.transparent,
              ),
            )
          ],
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
                            SizedBox(
                              height: 10,
                            ),
                            VerticalLine(),
                            Column(
                              children: [
                                DetailField(
                                  iconData: Icons.location_history,
                                  label: 'From ( not available)',
                                ),
                                DetailField(
                                  iconData: Icons.phone,
                                  label: '9898253927',
                                ),
                                DetailField(
                                  iconData: Icons.mail,
                                  label: 'abc@gmail.com',
                                ),
                                DetailField(
                                  iconData: Icons.location_city,
                                  label: 'Lives in (not available)',
                                ),
                                VerticalLine(),
                                DetailField(
                                  iconData: Icons.more,
                                  label: 'Person Details',
                                  edit: true,
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, EditPersonal.id);
                                  },
                                ),
                                DetailField(
                                  iconData: Icons.more,
                                  label: 'Professional Details',
                                  edit: true,
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, ProfessionalDetails.id);
                                  },
                                ),
                                DetailField(
                                  iconData: Icons.more,
                                  label: 'Update Password',
                                  edit: true,
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, UpdatePassword.id);
                                  },
                                ),
                                SizedBox(height: 100),
                              ],
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
