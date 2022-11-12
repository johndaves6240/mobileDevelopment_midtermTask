// ignore_for_file: file_names, unused_import, use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:midterm_task/screens/LoginScreen.dart';
import 'package:midterm_task/widget/PasswordField.dart';
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
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;
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
                        textInputType: TextInputType.name),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CustomTextField(
                        labelText: "Last Name",
                        hintText: "Enter your last name",
                        controller: firstNameController,
                        textInputType: TextInputType.name),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CustomTextField(
                        labelText: "Email Address",
                        hintText: "Enter your email address",
                        controller: firstNameController,
                        textInputType: TextInputType.emailAddress),
                    const SizedBox(
                      height: 20.0,
                    ),
                    PasswordField(
                        obscureText: obscurePassword,
                        onTap: handleObscurePassword,
                        labelText: "Password",
                        hintText: "Enter your password",
                        controller: passwordController),
                    const SizedBox(
                      height: 20.0,
                    ),
                    PasswordField(
                        obscureText: obscurePassword,
                        onTap: handleObscurePassword,
                        labelText: "Confirm Password",
                        hintText: "Enter your confirmed password",
                        controller: passwordController),
                    const SizedBox(
                      height: 20.0,
                    ),
                    PrimaryButton(
                      text: "Sign Up",
                      iconData: Icons.login,
                      onPress: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SecondaryButton(
                      text: "Back to Login",
                      iconData: Icons.login,
                      onPress: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                    ),
                  ],
                )),
          ),
        ),
      ),
    ));
  }

  handleObscurePassword() {
    setState(() {
      obscurePassword = !obscurePassword;
    });
  }
}
