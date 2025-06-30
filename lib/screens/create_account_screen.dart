import 'package:flutter/material.dart';
import '../widgets/components/custom_text_field.dart';
import '../widgets/components/custom_button.dart';
import '../widgets/redirect_link.dart';
import '../widgets/components/custom_app_bar.dart';
import '../widgets/components/custom_title.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: ''),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const SizedBox(height: 30),
              CustomTitle(title: 'Create an Account'),
              const SizedBox(height: 30),

              const CustomTextField(
                label: 'Name',
                hint: 'Enter your name',
                type: 3,
              ),
              const SizedBox(height: 30),
              const CustomTextField(
                label: 'Email',
                hint: 'Enter your email',
                type: 1,
              ),
              const SizedBox(height: 30),
              const CustomTextField(
                label: 'Password',
                hint: 'Enter a password',
                type: 2,
              ),
              const SizedBox(height: 30),
              RedirectLink(
                prefixText: "Already have an account? ",
                linkText: "Sign in",
                onTap: () {
                  Navigator.pop(context);
                  print("Go to the login page");
                },
              ),
              const SizedBox(height: 30),

              CustomButton(text: "Submit", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
