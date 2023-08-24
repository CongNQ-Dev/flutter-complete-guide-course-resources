import 'package:flutter/material.dart';

import 'StyledText.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;
  void rollDice() {}
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/dice-images/dice-1.png",
              width: 200,
            ),
            ElevatedButton(onPressed: rollDice, child: Text("Roll Dice"))
          ],
        ),
      ),
    );
  }
}
