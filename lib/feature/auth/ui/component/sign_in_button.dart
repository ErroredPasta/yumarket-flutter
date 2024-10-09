import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final void Function() onClick;

  const SignInButton({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onClick,
      child: const Text('로그인'),
    );
  }
}