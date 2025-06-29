import 'package:flutter/material.dart';
import 'components/custom_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTextField(
          label: 'Email',
          hint: 'email@example.com',
          keyboardType: TextInputType.emailAddress,
        ),

        const SizedBox(height: 20),
        const CustomTextField(
          label: 'Password',
          hint: 'Password',
          obscureText: true,
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
