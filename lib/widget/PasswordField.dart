// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final bool obscureText;
  final VoidCallback onTap;
  final String labelText;
  final String hintText;
  final TextEditingController controller;

  PasswordField(
      {required this.obscureText,
      required this.onTap,
      required this.labelText,
      required this.hintText,
      required this.controller});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.only(top: 12, right: 15, bottom: 19),
            child: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
          ),
        ),
        labelText: labelText,
        hintText: hintText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
    );
  }
}
