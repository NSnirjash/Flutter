

import 'package:dice_roller/dice_roller.dart';
import 'package:dice_roller/styled_Text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/BlackModern.jpg"),
            fit: BoxFit.cover
        ),
        // gradient: LinearGradient(
        //     colors: [Colors.brown, Colors.blueGrey],
        //   begin: Alignment.bottomCenter,
        //   end: Alignment.topCenter
        // )
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}

