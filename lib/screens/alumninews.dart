import 'package:flutter/material.dart';
import 'package:sarvali_alumni/screens/search.dart';
import 'package:sarvali_alumni/widgets/showcontent.dart';
import 'package:sarvali_alumni/widgets/sidemenu.dart';
import 'package:sarvali_alumni/widgets/profilecircles.dart';
import 'package:sarvali_alumni/widgets/newscard.dart';

import 'home.dart';

class AlumniNews extends StatefulWidget {
  static const String id = 'alumninews';
  @override
  _AlumniNewsState createState() => _AlumniNewsState();
}

class _AlumniNewsState extends State<AlumniNews> {
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ProfilesCircle(),
                NewsCard(
                  mainContext: context,
                  imageurl: 'images/charminar.jpg',
                  newsCategorie: 'Alumnis news',
                  newsHeading:
                      'Alumni association handed over to check to Nagarjuna family ',
                  postedBy: 'Admin,',
                  postedTime: 'a month ago',
                ),
                NewsCard(
                  mainContext: context,
                  imageurl: 'images/charminar.jpg',
                  newsCategorie: 'Alumni news',
                  newsHeading:
                      'Alumni association handed over to check to Nagarjuna family ',
                  postedBy: 'Admin,',
                  postedTime: 'a month ago',
                ),
                NewsCard(
                  mainContext: context,
                  imageurl: 'images/charminar.jpg',
                  newsCategorie: 'Alumni news',
                  newsHeading:
                      'Alumni association handed over to check to Nagarjuna family ',
                  postedBy: 'Admin,',
                  postedTime: 'a month ago',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
