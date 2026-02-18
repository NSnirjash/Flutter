

import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.italic,
          letterSpacing: 10,
          wordSpacing: 20,
          shadows: [
            Shadow(
                color: Colors.pink,
                offset: Offset(2,2),
                blurRadius: 4
            )
          ]

      ),
    );
  }
}
