

import 'dart:math';

import 'package:dice_roller/styled_Text.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  var currentDice = 6;

  void rollDice(){
    setState(() {
      currentDice = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/dice-$currentDice.png",
          width: 200,
        ),

        SizedBox(height: 30),

        TextButton(
          onPressed: rollDice,
          child: StyledText("Roll The Dice"),
        )
      ],
    );
  }
}
