import 'package:flutter/material.dart';
import 'package:mon_projet/pages/login_page.dart';
import 'package:mon_projet/screens/home_screen.dart';
import '../widgets/components/custom_button.dart';
import '../widgets/redirect_link.dart';
import 'create_account_screen.dart';
import '../widgets/components/custom_app_bar.dart';
import '../widgets/components/custom_title.dart';
import '../pages/remember_forgot_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

  static void printLogin() {
    print("Connexion...");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: ''),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const CustomTitle(title: 'Sign In'),
              const SizedBox(height: 40),
              LoginForm(),
              const SizedBox(height: 25),
              /// Row containing "Remember me" and "Forgot Password?"
              RememberForgotRow(
                rememberMe: _rememberMe,
                onRememberChanged: (value) {
                  setState(() {
                    _rememberMe = value!;
                  });
                },
                onForgotPassword: () {
                  print("Forgot password tapped");
                },
              ),
              const SizedBox(height: 30),
              const SizedBox(height: 15),
              CustomButton(
                text: "Home",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
              const SizedBox(height: 20),
              RedirectLink(
                prefixText: "New user? Create an account!",
                linkText: " Sign Up",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const RegisterPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
