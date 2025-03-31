import 'package:flutter/material.dart';
import 'package:login_app/login1/common/app_styles.dart';
import 'package:login_app/login1/common/common.dart';
import 'package:login_app/login1/widgets/primary_button.dart';
import 'package:login_app/login1/widgets/saperator.dart';
import 'package:login_app/login1/widgets/secondary_button.dart';
import 'package:login_app/login1/widgets/textbox.dart';

class Login1 extends StatelessWidget {
  const Login1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Login1Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Login1Constants.padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(Login1Images.logo, width: 100, height: 18),
                SizedBox(height: 32),
                Text("Sign in to your\nAccount", style: AppStyles.title),
                SizedBox(height: 12),
                Text(
                  "Enter your email and password to log in",
                  style: AppStyles.subtitle,
                ),
                SizedBox(height: 32),
                TextBox(label: "Email"),
                SizedBox(height: 16),
                TextBox(label: "Password"),
                SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: InkWell(
                    child: Text(
                      "Forgot Password ?",
                      textAlign: TextAlign.right,
                      style: AppStyles.subtitle.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Login1Colors.blue,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 24),
                PrimaryButton(label: "Login"),
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
                ),
                SizedBox(height: 15),
                SecondaryButton(
                  label: "Continue with Facebook",
                  prefixIcon: Image.asset(
                    Login1Images.facebookLogo,
                    width: 18,
                    height: 18,
                  ),
                ),
                Expanded(child: Container()),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have account?", style: AppStyles.label),
                    Ink(
                      child: Text(
                        "Sign Up",
                        style: AppStyles.label.copyWith(
                          color: Login1Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
