import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 6;

  void rollDice(){
    setState(() {
      activeDiceImage = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$activeDiceImage.png',
          width: 200,
        ),

        SizedBox(height: 30),

        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 30,)),
            child: Text("Roll Dice")
        )
      ],
    );
  }
}
