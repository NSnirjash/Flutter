import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [
          Color.fromARGB(255, 4, 66, 36),
          Color.fromARGB(255, 22, 106, 66),
        ],)
        ),
      ),
  );
}


