import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

// const gradientColors = [
//             Color.fromARGB(255, 71, 3, 189),
//             Color.fromARGB(255, 185, 142, 253)
//           ];
const color1 = Color.fromARGB(255, 71, 3, 189);
const color2 = Color.fromARGB(255, 185, 142, 253);

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(color1, color2),
        // body: GradientContainer(colors: gradientColors),
      ),
    ),
  );
}
