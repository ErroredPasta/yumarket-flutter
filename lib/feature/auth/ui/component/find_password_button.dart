import 'package:flutter/material.dart';

class FindPasswordButton extends StatelessWidget {
  final void Function() onClick;

  const FindPasswordButton({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClick,
      child: const Text(
        '비밀번호 찾기',
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}