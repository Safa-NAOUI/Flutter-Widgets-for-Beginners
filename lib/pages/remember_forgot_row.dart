import 'package:flutter/material.dart';

class RememberForgotRow extends StatelessWidget {
  final bool rememberMe;
  final ValueChanged<bool?> onRememberChanged;
  final VoidCallback onForgotPassword;

  const RememberForgotRow({
    super.key,
    required this.rememberMe,
    required this.onRememberChanged,
    required this.onForgotPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: rememberMe,
              onChanged: onRememberChanged,
            ),
            const Text('Remember me'),
          ],
        ),
        TextButton(
          onPressed: onForgotPassword,
          child: const Text(
            'Forgot Password?',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
