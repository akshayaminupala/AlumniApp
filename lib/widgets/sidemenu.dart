import 'package:flutter/material.dart';
import 'package:sarvali_alumni/screens/advisors.dart';
import 'package:sarvali_alumni/screens/alumninews.dart';
import 'package:sarvali_alumni/screens/bankaccount.dart';
import 'package:sarvali_alumni/screens/batchreps.dart';
import 'package:sarvali_alumni/screens/donate.dart';
import 'package:sarvali_alumni/screens/excustive.dart';
import 'package:sarvali_alumni/screens/helpsarvalians.dart';
import 'package:sarvali_alumni/screens/lifemembreship.dart';
import 'package:sarvali_alumni/screens/ourstories.dart';
import 'package:sarvali_alumni/screens/reunions.dart';
import 'package:sarvali_alumni/screens/schooldevelopment.dart';
import 'package:sarvali_alumni/screens/schoolnews.dart';
import 'package:sarvali_alumni/screens/whatsapp.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text(
          //     'Side menu',
          //     style: TextStyle(color: Colors.white, fontSize: 25),
          //   ),
          //   decoration: BoxDecoration(
          //       color: Colors.green,
          //       image: DecorationImage(
          //           fit: BoxFit.fill,
          //           image: AssetImage('assets/images/cover.jpg'))),
          // ),
          ExpansionTile(
            title: Text("News"),
            children: <Widget>[
              ListTile(
                title: Text('School News'),
                onTap: () =>
                    {Navigator.popAndPushNamed(context, SchoolNews.id)},
              ),
              ListTile(
                title: Text('Alumni News'),
                onTap: () =>
                    {Navigator.popAndPushNamed(context, AlumniNews.id)},
              ),
              ListTile(
                title: Text('Reunions'),
                onTap: () => {Navigator.popAndPushNamed(context, Reunion.id)},
              ),
              ListTile(
                title: Text('OurStories'),
                onTap: () =>
                    {Navigator.popAndPushNamed(context, OurStories.id)},
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Give it Back"),
            children: <Widget>[
              ListTile(
                title: Text('School Development'),
                onTap: () =>
                    {Navigator.popAndPushNamed(context, SchoolDevelopment.id)},
              ),
              ListTile(
                title: Text('Help Sarvallians'),
                onTap: () =>
                    {Navigator.popAndPushNamed(context, HelpSarvalian.id)},
              ),
              ListTile(
                title: Text('Donate to alumni'),
                onTap: () => {Navigator.popAndPushNamed(context, Donate.id)},
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Organization"),
            children: <Widget>[
              ListTile(
                title: Text('Executive Committe'),
                onTap: () => {Navigator.popAndPushNamed(context, Executive.id)},
              ),
              ListTile(
                title: Text('Batch Reps'),
                onTap: () => {Navigator.popAndPushNamed(context, BatchRep.id)},
              ),
              ListTile(
                title: Text('Advisors'),
                onTap: () => {Navigator.popAndPushNamed(context, Advisors.id)},
              ),
              ListTile(
                title: Text('Life Membership'),
                onTap: () =>
                    {Navigator.popAndPushNamed(context, LifeMembership.id)},
              ),
              ListTile(
                title: Text('Bank Account'),
                onTap: () =>
                    {Navigator.popAndPushNamed(context, BankAccount.id)},
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Directory"),
            children: <Widget>[
              ListTile(
                title: Text('Whatsapp group'),
                onTap: () => {Navigator.popAndPushNamed(context, Whatsapp.id)},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
