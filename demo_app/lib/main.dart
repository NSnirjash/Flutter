import 'package:demo_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer([Colors.teal,Colors.green]),
      ),
    )
  );
}
