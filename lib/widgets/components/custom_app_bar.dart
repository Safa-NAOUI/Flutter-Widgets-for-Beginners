import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showBackButton = false, // Pas de bouton retour par défaut
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      title: Text(title),
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : null, // Pas de bouton si showBackButton == false
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
