import 'package:flutter/material.dart';
import 'package:login_app/login1/common/common.dart';
import 'package:login_app/widgets/label.dart';
import 'package:login_app/widgets/link.dart';
import 'package:login_app/widgets/primary_button.dart';
import 'package:login_app/widgets/saperator.dart';
import 'package:login_app/widgets/secondary_button.dart';
import 'package:login_app/widgets/textbox.dart';
import 'package:login_app/widgets/title.dart';

class Login1 extends StatelessWidget {
  const Login1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Login1Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Login1Constants.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(Login1Images.logo, width: 100, height: 18),
              SizedBox(height: 32),
              TitleText("Sign in to your\nAccount"),
              SizedBox(height: 12),
              Label("Enter your email and password to log in"),
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
              Expanded(child: Container()),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Label("Don't have account?"),
                  SizedBox(width: 5),
                  LinkLabel("Sign Up", onClick: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
