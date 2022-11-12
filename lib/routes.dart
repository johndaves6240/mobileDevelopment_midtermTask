// ignore: unused_import
// ignore_for_file: avoid_web_libraries_in_flutter, unused_import, duplicate_ignore, prefer_const_constructors

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:midterm_task/screens/DashboardScreen.dart';
import 'package:midterm_task/screens/LoginScreen.dart';
import 'package:midterm_task/screens/Settings.dart';
import 'package:midterm_task/screens/SignupScreen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (BuildContext context) => LoginScreen(),
  DashboardScreen.routeName: (BuildContext context) => DashboardScreen(),
  Settings.routeName: (BuildContext context) => Settings(),
  SignupScreen.routeName: (BuildContext context) => SignupScreen()
};
