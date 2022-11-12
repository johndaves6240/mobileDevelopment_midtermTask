import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:midterm_task/screens/DashboardScreen.dart';
import 'package:midterm_task/screens/SignupScreen.dart';
import 'package:midterm_task/widget/CustomTextField.dart';
import 'package:midterm_task/widget/PasswordField.dart';
import 'package:midterm_task/widget/PrimaryButton.dart';
import 'package:midterm_task/widget/SecondaryButton.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/login";

  @override
  _LoginScreenState createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
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
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) {
                              return DashboardScreen(
                                  text: emailController.text);
                            },
                          ));
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
    );
  }

  handleObscurePassword() {
    setState(() {
      obscurePassword = !obscurePassword;
    });
  }
}
