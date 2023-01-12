import 'package:flutter/material.dart';

class BoldAppText extends StatelessWidget {
  final String text;
  const BoldAppText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style:const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
      ),
    );
  }
}
