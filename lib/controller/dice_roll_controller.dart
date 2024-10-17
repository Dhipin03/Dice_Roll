import 'dart:math';

import 'package:flutter/material.dart';

class DiceRollController with ChangeNotifier {
  Random random = Random();
  List dice = [
    "assets/images/d1.jpg",
    "assets/images/d2.png",
    "assets/images/d3.png",
    "assets/images/d4.png",
    "assets/images/d5.png",
    "assets/images/d6.png"
  ];
  String img = "assets/images/d1.jpg";
  rolldice() {
    int rand = random.nextInt(dice.length);
    img = dice[rand];
    notifyListeners();
  }
}
