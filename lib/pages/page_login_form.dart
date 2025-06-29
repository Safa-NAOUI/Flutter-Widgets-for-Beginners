import 'package:flutter/material.dart';
import '../widgets/components/custom_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTextField(
          label: 'Email',
          hint: 'Enter your email',
          type: 1,
        ),

        const SizedBox(height: 20),

        const CustomTextField(
          label: 'Password',
          hint: 'Enter your password',
          type: 2,
        ),
      ],
    );
  }
}
