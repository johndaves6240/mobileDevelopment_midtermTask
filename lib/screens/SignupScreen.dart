import 'package:flutter/material.dart';
import 'package:midterm_task/screens/LoginScreen.dart';

import '../widget/CustomTextField.dart';
import '../widget/PrimaryButton.dart';
import '../widget/SecondaryButton.dart';

class SignupScreen extends StatefulWidget {
  static String routeName = "/signup";

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController firstNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      child: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
                width: width * .9,
                child: Column(
                  children: [
                    CustomTextField(
                        labelText: "First Name",
                        hintText: "Enter your first name",
                        controller: firstNameController,
                        textInputType: TextInputType.emailAddress),
                    const SizedBox(
                      height: 20.0,
                    ),
                    PrimaryButton(
                      text: "Login",
                      iconData: Icons.login,
                      onPress: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SecondaryButton(
                      text: "Signup",
                      iconData: Icons.login,
                      onPress: () {
                        Navigator.pushNamed(context, SignupScreen.routeName);
                      },
                    ),
                  ],
                )),
          ),
        ),
      ),
    ));
  }
}
