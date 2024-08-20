import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  String img = "assets/images/d1.jpg";
  Random random = Random();
  List dice = [
    "assets/images/d1.jpg",
    "assets/images/d2.png",
    "assets/images/d3.png",
    "assets/images/d4.png",
    "assets/images/d5.png",
    "assets/images/d6.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(88.0),
            child: Image(image: AssetImage(img)),
          ),
          ElevatedButton(
            style: ButtonStyle(
                minimumSize: WidgetStatePropertyAll(Size(150, 70)),
                backgroundColor: WidgetStatePropertyAll(Colors.black),
                foregroundColor:
                    WidgetStatePropertyAll(Colors.yellow.shade800)),
            onPressed: () {
              setState(() {
                int rand = random.nextInt(dice.length);
                img = dice[rand];
              });
            },
            child: Text(
              "Roll Dice",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
