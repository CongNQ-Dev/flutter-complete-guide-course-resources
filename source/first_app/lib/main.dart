import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(body: GradientContainer()),
  ));
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          const Color.fromARGB(255, 143, 92, 232),
          Color.fromARGB(255, 88, 16, 244),
          Color.fromARGB(2, 88, 16, 150),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Center(
        child: RichText(
          text: TextSpan(
              text: "hello world",
              style: TextStyle(
                  color: const Color.fromARGB(255, 235, 212, 136),
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
      ),
    );
  }
}
