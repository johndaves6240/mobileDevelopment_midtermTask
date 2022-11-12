// ignore_for_file: file_names, must_be_immutable, prefer_typing_uninitialized_variables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import 'Settings.dart';

class DashboardScreen extends StatefulWidget {
  static String routeName = "/dashboard";
  var email;
  DashboardScreen({Key? mykey, this.email}) : super(key: mykey);
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Settings.routeName);
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(Icons.settings, size: 30),
            ),
          )
        ],
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child: Text("Dashboard"),
      ),
    );
  }
}
