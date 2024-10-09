import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController controller;

  const PasswordTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        labelText: '비밀번호',
        border: OutlineInputBorder(),
      ),
      obscureText: true,
    );
  }
}
