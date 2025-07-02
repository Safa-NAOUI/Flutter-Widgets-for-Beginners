import 'package:flutter/material.dart';
import '../widgets/components/custom_text_field.dart';
import '../widgets/components/custom_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Tous les champs sont valides
      final email = _emailController.text;
      final password = _passwordController.text;

      // Tu peux envoyer les données ici
      print('Email: $email, Password: $password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            label: 'Email',
            hint: 'Enter your email',
            type: 1,
            controller: _emailController,
          ),

          const SizedBox(height: 20),

          CustomTextField(
            label: 'Password',
            hint: 'Enter your password',
            type: 2,
            controller: _passwordController,
          ),

          const SizedBox(height: 20),

          CustomButton(text: "Sign In", onPressed: _submitForm),
        ],
      ),
    );
  }
}
