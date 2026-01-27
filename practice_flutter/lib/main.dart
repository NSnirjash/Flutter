import 'package:flutter/material.dart';
import 'package:practice_flutter/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 16, 7, 83),
          Color.fromARGB(255, 26, 13, 128)
        ]),
      ),
    ),
  );
}
