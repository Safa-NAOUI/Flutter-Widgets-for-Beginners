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
              const SizedBox(height: 40),

              CustomTitle(title: 'Créer un compte'),

              const SizedBox(height: 60),
              const CustomTextField(label: 'Nom', hint: 'Entrez votre nom'),
              const SizedBox(height: 20),

              const CustomTextField(
                label: 'Email',
                hint: 'Entrez votre email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),

              const CustomTextField(
                label: 'Mot de passe',
                hint: 'Entrez un mot de passe',
                obscureText: true,
              ),
              const SizedBox(height: 30),

              RedirectLink(
                prefixText: "Déjà inscrit ? ",
                linkText: "Se connecter",
                onTap: () {
                  Navigator.pop(context); // Revenir à LoginPage
                  print("Aller à la page de connexion");
                },
              ),
              const SizedBox(height: 30),

              CustomButton(
                text: "Créer un compte",
                onPressed: () {
                  print("Création du compte...");
                },
              ),
            ],
          ),
        ),
        // ),
      ),
    );
  }
}
