import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  const AppText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black87,
        fontSize: 16,
        letterSpacing: 1,
      ),
    );
  }
}
