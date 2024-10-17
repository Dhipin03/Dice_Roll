import 'package:dice_app/controller/dice_roll_controller.dart';
import 'package:dice_app/view/Home_Screen/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DiceRollController(),
      child: MaterialApp(home: HomeScreen()),
    );
  }
}
