// ignore_for_file: file_names, must_be_immutable, prefer_typing_uninitialized_variables, prefer_const_constructors, duplicate_ignore, prefer_interpolation_to_compose_strings, unnecessary_import, unused_import, unnecessary_this, no_logic_in_create_state

import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:midterm_task/screens/LoginScreen.dart';

import 'Settings.dart';

class DashboardScreen extends StatefulWidget {
  static String routeName = "/dashboard";

  const DashboardScreen({super.key, required this.text});
  final String text;

  @override
  State<DashboardScreen> createState() => _DashboardScreenState(this.text);
}

class _DashboardScreenState extends State<DashboardScreen> {
  final String text;
  _DashboardScreenState(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        automaticallyImplyLeading: false,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Welcome" + text.toString())],
        ),
      ),
    );
  }
}
