import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: text,
          style: TextStyle(
              color: const Color.fromARGB(255, 235, 212, 136),
              fontWeight: FontWeight.bold,
              fontSize: 20)),
    );
  }
}
