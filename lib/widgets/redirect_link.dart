import 'package:flutter/material.dart';

class RedirectLink extends StatelessWidget {
  final String prefixText;
  final String linkText;
  final VoidCallback onTap;

  const RedirectLink({
    super.key,
    required this.prefixText,
    required this.linkText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(prefixText),
        GestureDetector(
          onTap: onTap,
          child: Text(
            linkText,
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
