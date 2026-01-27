import 'package:flutter/material.dart';
import 'package:practice_flutter/styled_text.dart';

class GradientContainer extends StatelessWidget{
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topRight,
            end: Alignment.topLeft
        ),
      ),
      child: Center(
        child: Image.asset(
          "assets/images/dice-3.png",
          width: 200,
        ),
      ),
    );
  }
}