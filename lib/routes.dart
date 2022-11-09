import 'package:flutter/cupertino.dart';
import 'package:midterm_task/screens/DashboardScreen.dart';
import 'package:midterm_task/screens/LoginScreen.dart';
import 'package:midterm_task/screens/Settings.dart';
import 'package:midterm_task/screens/SignupScreen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (BuildContext context) => LoginScreen(),
  DashboardScreen.routeName: (BuildContext context) => DashboardScreen(),
  Settings.routeName: (BuildContext context) => Settings(),
  SignupScreen.routeName: (BuildContext context) => SignupScreen(),
};
