import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

import 'StyledText.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
