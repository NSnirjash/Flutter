import 'package:flutter/material.dart';
import 'package:try_flutter/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Colors.teal,
          Colors.green]
        )
      ),
    ),
  );
}
