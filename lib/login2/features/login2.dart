import 'package:flutter/material.dart';
import 'package:login_app/login1/common/common.dart';
import 'package:login_app/widgets/label.dart';
import 'package:login_app/widgets/link.dart';
import 'package:login_app/widgets/primary_button.dart';
import 'package:login_app/widgets/saperator.dart';
import 'package:login_app/widgets/secondary_button.dart';
import 'package:login_app/widgets/title.dart';
import 'package:login_app/widgets/textbox.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2C70E9), Color(0xFF20A6E1), Color(0xFF1EDEDA)],
            stops: [0.0, 0.3, 0.7],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 32),
              Image.asset(Login1Images.logoWhite, width: 121, height: 22),
              SizedBox(height: 32),
              Container(
                padding: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    TitleText("Login"),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Label("Don't have an account?"),
                        SizedBox(width: 5),
                        LinkLabel("Sign Up", onClick: () {}),
                      ],
                    ),
                    SizedBox(height: 32),
                    TextBox(label: "Email"),
                    SizedBox(height: 16),
                    TextBox(label: "Password"),
                    SizedBox(height: 16),
                    Container(
                      alignment: Alignment.centerRight,
                      child: LinkLabel("Forgot Password ?", onClick: () {}),
                    ),
                    SizedBox(height: 24),
                    PrimaryButton(label: "Log In", onPress: () {}),
                    SizedBox(height: 24),
                    Saperator(label: "Or"),
                    SizedBox(height: 24),
                    SecondaryButton(
                      label: "Continue with Google",
                      prefixIcon: Image.asset(
                        Login1Images.googleLogo,
                        width: 18,
                        height: 18,
                      ),
                      onPress: () {},
                    ),
                    SizedBox(height: 15),
                    SecondaryButton(
                      label: "Continue with Facebook",
                      prefixIcon: Image.asset(
                        Login1Images.facebookLogo,
                        width: 18,
                        height: 18,
                      ),
                      onPress: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
