import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController controller;

  const EmailTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        labelText: '이메일',
        border: OutlineInputBorder(),
      ),
    );
  }
}