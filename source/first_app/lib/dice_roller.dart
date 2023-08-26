import 'package:flutter/material.dart';
import 'dart:math';

final randomize = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = "assets/images/dice-images/dice-1.png";
  void rollDice() {
    int rollerNumber = randomize.nextInt(6) + 1;
    setState(() {
      activeDiceImage = "assets/images/dice-images/dice-$rollerNumber.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rollDice,
          child: Text("Roll Dice"),
          style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 28),
              backgroundColor: Color.fromRGBO(175, 66, 222, 1)),
        )
      ],
    );
  }
}
