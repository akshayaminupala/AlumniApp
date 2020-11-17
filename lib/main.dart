import 'package:flutter/material.dart';
import 'package:sarvali_alumni/screens/advisors.dart';
import 'package:sarvali_alumni/screens/alumninews.dart';
import 'package:sarvali_alumni/screens/bankaccount.dart';
import 'package:sarvali_alumni/screens/batchreps.dart';
import 'package:sarvali_alumni/screens/donate.dart';
import 'package:sarvali_alumni/screens/editpersonal.dart';
import 'package:sarvali_alumni/screens/excustive.dart';
import 'package:sarvali_alumni/screens/helpsarvalians.dart';
import 'package:sarvali_alumni/screens/home.dart';
import 'package:sarvali_alumni/screens/lifemembreship.dart';
import 'package:sarvali_alumni/screens/login.dart';
import 'package:sarvali_alumni/screens/news.dart';
import 'package:sarvali_alumni/screens/otherprofile.dart';
import 'package:sarvali_alumni/screens/otp.dart';
import 'package:sarvali_alumni/screens/ourstories.dart';
import 'package:sarvali_alumni/screens/professionaldetails.dart';
import 'package:sarvali_alumni/screens/profile.dart';
import 'package:sarvali_alumni/screens/reunions.dart';
import 'package:sarvali_alumni/screens/schooldevelopment.dart';
import 'package:sarvali_alumni/screens/schoolnews.dart';
import 'package:sarvali_alumni/screens/search.dart';
import 'package:sarvali_alumni/screens/signup.dart';
import 'package:sarvali_alumni/screens/updatePassword.dart';
import 'package:sarvali_alumni/screens/whatsapp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Login.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        Login.id: (context) => Login(),
        SignUp.id: (context) => SignUp(),
        NewsPage.id: (context) => NewsPage(),
        Profile.id: (context) => Profile(),
        Search.id: (context) => Search(),
        EditPersonal.id: (context) => EditPersonal(),
        ProfessionalDetails.id: (context) => ProfessionalDetails(),
        UpdatePassword.id: (context) => UpdatePassword(),
        AlumniNews.id: (context) => AlumniNews(),
        SchoolNews.id: (context) => SchoolNews(),
        Reunion.id: (context) => Reunion(),
        OurStories.id: (context) => OurStories(),
        SchoolDevelopment.id: (context) => SchoolDevelopment(),
        HelpSarvalian.id: (context) => HelpSarvalian(),
        Donate.id: (context) => Donate(),
        Otp.id: (context) => Otp(),
        OtherProfile.id: (context) => OtherProfile(),
        Executive.id: (context) => Executive(),
        BatchRep.id: (context) => BatchRep(),
        Advisors.id: (context) => Advisors(),
        BankAccount.id: (context) => BankAccount(),
        LifeMembership.id: (context) => LifeMembership(),
        Whatsapp.id: (context) => Whatsapp()
      },
    );
  }
}
