import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Scaffold(
          body: GradientContainer([
        Color.fromARGB(255, 143, 92, 232),
        Color.fromARGB(255, 88, 16, 244),
        Color.fromARGB(2, 88, 16, 150),
      ])),
    ),
  ));
}
