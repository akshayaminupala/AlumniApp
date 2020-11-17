import 'package:flutter/material.dart';
import 'package:sarvali_alumni/screens/home.dart';
import 'package:sarvali_alumni/widgets/basicbutton.dart';
import 'package:sarvali_alumni/widgets/showcontent.dart';
import 'package:sarvali_alumni/widgets/sidemenu.dart';
import 'package:sarvali_alumni/widgets/searchfield.dart';
import 'package:sarvali_alumni/widgets/profilecard.dart';
import 'package:sarvali_alumni/widgets/newsmallcard.dart';

class Search extends StatefulWidget {
  static const String id = 'search';
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int _selectedIndex = 0;
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
        body: Scaffold(
          body: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(0.0),
                  child: TabBar(
                    onTap: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                      // Tab index when user select it, it start from zero
                    },
                    tabs: [
                      Tab(
                          icon: Icon(
                        Icons.card_travel,
                        color:
                            _selectedIndex == 0 ? Colors.orange : Colors.black,
                      )),
                      Tab(
                          icon: Icon(
                        Icons.supervised_user_circle,
                        color:
                            _selectedIndex == 1 ? Colors.orange : Colors.black,
                      )),
                    ],
                  ),
                ),
              ),
              body: TabBarView(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SearchField(
                            hintText: 'search about alumni !',
                            suffix: Icons.search,
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  NewsSmallCard(
                                    imageurl: 'images/charminar.jpg',
                                    heading:
                                        'Alumni association handed over the check to nagarjunas family',
                                    time: '17 days ago',
                                  ),
                                  NewsSmallCard(
                                    imageurl: 'images/charminar.jpg',
                                    heading:
                                        'Alumni association handed over the check to nagarjunas family',
                                    time: '17 days ago',
                                  ),
                                  NewsSmallCard(
                                    imageurl: 'images/charminar.jpg',
                                    heading:
                                        'Alumni association handed over the check to nagarjunas family',
                                    time: '17 days ago',
                                  ),
                                  NewsSmallCard(
                                    imageurl: 'images/charminar.jpg',
                                    heading:
                                        'Alumni association handed over the check to nagarjunas family',
                                    time: '17 days ago',
                                  ),
                                  NewsSmallCard(
                                    imageurl: 'images/charminar.jpg',
                                    heading:
                                        'Alumni association handed over the check to nagarjunas family',
                                    time: '17 days ago',
                                  ),
                                  NewsSmallCard(
                                    imageurl: 'images/charminar.jpg',
                                    heading:
                                        'Alumni association handed over the check to nagarjunas family',
                                    time: '17 days ago',
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: SearchField(
                                  hintText: 'Name !',
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                flex: 2,
                                child: SearchField(
                                  hintText: 'Batch !',
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: SearchField(
                                  hintText: 'Enter Profession !',
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: RoundedButton(
                                    label: 'Search',
                                  ))
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              child: Container(
                                child: Column(
                                  children: [
                                    ProfileCard(
                                      batch: '1989',
                                      name: 'admin',
                                      profession: 'Doctor',
                                    ),
                                    ProfileCard(
                                      batch: '1989',
                                      name: 'admin',
                                      profession: 'Doctor',
                                    ),
                                    ProfileCard(
                                      batch: '1989',
                                      name: 'admin',
                                      profession: 'Doctor',
                                    ),
                                    ProfileCard(
                                      batch: '1989',
                                      name: 'admin',
                                      profession: 'Doctor',
                                    ),
                                    ProfileCard(
                                      batch: '1989',
                                      name: 'admin',
                                      profession: 'Doctor',
                                    ),
                                    ProfileCard(
                                      batch: '1989',
                                      name: 'admin',
                                      profession: 'Doctor',
                                    ),
                                    ProfileCard(
                                      batch: '1989',
                                      name: 'admin',
                                      profession: 'Doctor',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
