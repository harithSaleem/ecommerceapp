import 'dart:math';

import 'package:flutter/material.dart';

class RaondomColor {
  int index = 10;
  List color = [
    Colors.blue,
    Colors.deepPurple,
    Colors.pink,
    Colors.green,
    Colors.red,
    Colors.teal,
    Colors.cyan,
    Colors.blue,
    Colors.deepPurple,
    Colors.pink,
    Colors.green,
    Colors.red,
    Colors.teal,
    Colors.cyan,
    Colors.blue,
    Colors.deepPurple,
    Colors.pink,
    Colors.green,
    Colors.red,
    Colors.teal,
    Colors.cyan,
    Colors.blue,
    Colors.deepPurple,
    Colors.pink,
    Colors.green,
    Colors.red,
    Colors.teal,
    Colors.cyan,
    Colors.blue,
    Colors.deepPurple,
    Colors.pink,
    Colors.green,
    Colors.red,
    Colors.teal,
    Colors.cyan,
    Colors.blue,
    Colors.pink,
    Colors.deepPurple,
    Colors.amber,
    Colors.red,
    Colors.green,
    Colors.orange,
    Colors.teal,
    Colors.blueGrey,
    Colors.brown,
  ];

  Random random = Random();
  static Color Selectedcolor() {
    return Color(Random().nextInt(0xffffffff)).withAlpha(0xffffffffff);
  }
}
