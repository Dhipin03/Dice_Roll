import 'dart:math';

import 'package:dice_app/controller/dice_roll_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(88.0),
            child: Image(
                image: AssetImage(context.watch<DiceRollController>().img)),
          ),
          ElevatedButton(
            style: ButtonStyle(
                minimumSize: WidgetStatePropertyAll(Size(150, 70)),
                backgroundColor: WidgetStatePropertyAll(Colors.black),
                foregroundColor:
                    WidgetStatePropertyAll(Colors.yellow.shade800)),
            onPressed: () {
              context.read<DiceRollController>().rolldice();
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
