// ignore_for_file: file_names, unused_import, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:midterm_task/screens/DashboardScreen.dart';
import 'package:midterm_task/screens/LoginScreen.dart';
import 'package:midterm_task/services/AuthServices.dart';
import 'package:midterm_task/services/StorageService.dart';

class Settings extends StatefulWidget {
  static String routeName = "/settings";

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  StorageService _storageService = StorageService();
  AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        actions: [
          GestureDetector(
            onTap: () async {
              await _authService.logout();
              _storageService.deleteAllData();
              // ignore: use_build_context_synchronously
              Navigator.of(context).pushNamedAndRemoveUntil(
                  LoginScreen.routeName, (Route<dynamic> route) => false);
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(
                Icons.logout,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: const Center(
        child: Text("Settings"),
      ),
    );
  }
}
