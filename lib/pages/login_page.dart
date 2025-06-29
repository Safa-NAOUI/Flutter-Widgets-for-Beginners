/*import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/redirect_link.dart';
import '../screens/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextField(
                label: 'Emaillll',
                hint: 'email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                label: 'Password',
                hint: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Handle login logic here
                },
                child: const Text('Login'),
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
*/