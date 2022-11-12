// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:midterm_task/routes.dart';
import 'package:midterm_task/screens/DashboardScreen.dart';
import 'package:midterm_task/screens/LoginScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: LoginScreen.routeName,
    routes: routes,
  ));
}
