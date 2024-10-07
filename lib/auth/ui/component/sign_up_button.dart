import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final void Function() onClick;

  const SignUpButton({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClick,
      child: const Text(
        '회원가입',
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}