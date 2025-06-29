import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final String hint;
  final int type; // 1 = email, 2 = password, 3 = text

  const CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.type,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscureText;
  late TextInputType _keyboardType;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.type == 2;
    _keyboardType = _getKeyboardType(widget.type);
  }

  TextInputType _getKeyboardType(int type) {
    switch (type) {
      case 1:
        return TextInputType.emailAddress;
      case 2:
      case 3:
        return TextInputType.text;
      default:
        return TextInputType.text;
    }
  }

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText,
      keyboardType: _keyboardType,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: widget.label,
        hintText: widget.hint,
        suffixIcon: widget.type == 2
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: _toggleVisibility,
              )
            : null,
      ),
    );
  }
}
