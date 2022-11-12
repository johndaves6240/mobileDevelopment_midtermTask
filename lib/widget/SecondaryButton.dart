// ignore_for_file: file_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final VoidCallback onPress;

  // ignore: use_key_in_widget_constructors
  SecondaryButton(
      {required this.text, required this.iconData, required this.onPress});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(double.maxFinite, 50),
      ),
      onPressed: onPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }
}
