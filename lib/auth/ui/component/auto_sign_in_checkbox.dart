import 'package:flutter/material.dart';

class AutoSignInCheckbox extends StatelessWidget {
  final bool isChecked;
  final void Function() onClick;

  const AutoSignInCheckbox({
    super.key,
    required this.isChecked,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Row(
        children: [
          Checkbox(value: isChecked, onChanged: (value) => onClick()),
          const Text('자동 로그인')
        ],
      ),
    );
  }
}
