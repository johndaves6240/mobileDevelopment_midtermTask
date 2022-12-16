// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, library_private_types_in_public_api, file_names, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:midterm_task/screens/DashboardScreen.dart';
import 'package:midterm_task/screens/SignupScreen.dart';
import 'package:midterm_task/services/AuthServices.dart';
import 'package:midterm_task/widget/CustomTextField.dart';
import 'package:midterm_task/widget/PasswordField.dart';
import 'package:midterm_task/widget/PrimaryButton.dart';
import 'package:midterm_task/widget/SecondaryButton.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/login";

  @override
  _LoginScreenState createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  AuthService _authService = AuthService();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;
  bool isLogginIn = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Center(
          child: ModalProgressHUD(
            inAsyncCall: isLogginIn,
            child: SingleChildScrollView(
              child: Center(
                child: Container(
                  width: width * .9,
                  child: Column(
                    children: [
                      CustomTextField(
                          labelText: "Email Address",
                          hintText: "Enter your email address",
                          controller: emailController,
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
                      PrimaryButton(
                          text: "Login",
                          iconData: Icons.login,
                          onPress: () {
                            loginWithProvider();
                          }),
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
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                          child: Center(
                        child: GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Don't have an account? Click Sign up button.",
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  handleObscurePassword() {
    setState(() {
      obscurePassword = !obscurePassword;
    });
  }

  loginWithProvider() async {
    try {
      setState(() {
        isLogginIn = true;
      });
      var user = await _authService.signInWithGoogle();
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, DashboardScreen.routeName);
    } catch (e) {}

    setState(() {
      isLogginIn = false;
    });
  }
}
