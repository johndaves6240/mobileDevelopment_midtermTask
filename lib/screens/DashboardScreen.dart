import 'package:flutter/material.dart';

import 'Settings.dart';

class DashboardScreen extends StatefulWidget {
  static String routeName = "/dashboard";

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
      body: Center(
        child: Text("Dashboard"),
      ),
    );
  }
}
