import 'package:flutter/material.dart';
import 'package:sarvali_alumni/screens/search.dart';
import 'package:sarvali_alumni/widgets/showcontent.dart';
import 'package:sarvali_alumni/widgets/sidemenu.dart';

class BankAccount extends StatefulWidget {
  static const String id = 'bankaccounr';
  @override
  _BankAccountState createState() => _BankAccountState();
}

class _BankAccountState extends State<BankAccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Image(
            height: 35,
            image: AssetImage('images/sarvali.jpeg'),
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
      ),
    );
  }
}
