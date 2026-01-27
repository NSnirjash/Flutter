import 'package:flutter/material.dart';
import 'package:try_flutter/styled_text.dart';

class GradientContainer extends StatelessWidget{
  const GradientContainer(this.colors, {super.key});
  
  final List<Color> colors;
  
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
        ),
      ),
      child: Center(
        child: StyledText("Hello World")
      ),
    );
  }

}