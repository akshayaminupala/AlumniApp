import 'package:flutter/material.dart';
import 'package:sarvali_alumni/screens/home.dart';
import 'package:sarvali_alumni/screens/search.dart';
import 'package:sarvali_alumni/widgets/showcontent.dart';
import 'package:sarvali_alumni/widgets/sidemenu.dart';
import 'package:sarvali_alumni/widgets/profilecircles.dart';
import 'package:sarvali_alumni/widgets/newscard.dart';

class SchoolNews extends StatefulWidget {
  static const String id = 'schoolnews';
  @override
  _SchoolNewsState createState() => _SchoolNewsState();
}

class _SchoolNewsState extends State<SchoolNews> {
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
                  newsCategorie: 'School news',
                  newsHeading:
                      'Alumni association handed over to check to Nagarjuna family ',
                  postedBy: 'Admin,',
                  postedTime: 'a month ago',
                ),
                NewsCard(
                  mainContext: context,
                  imageurl: 'images/charminar.jpg',
                  newsCategorie: 'School news',
                  newsHeading:
                      'Alumni association handed over to check to Nagarjuna family ',
                  postedBy: 'Admin,',
                  postedTime: 'a month ago',
                ),
                NewsCard(
                  mainContext: context,
                  imageurl: 'images/charminar.jpg',
                  newsCategorie: 'School news',
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
