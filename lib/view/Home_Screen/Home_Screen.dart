import 'package:dice_app/view/dice_roll/dice_roll.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dice Roll"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => DiceRoll(),
              ),
            );
          },
          child: Image(
            image: AssetImage("assets/images/button.png"),
          ),
        ),
      ),
    );
  }
}
