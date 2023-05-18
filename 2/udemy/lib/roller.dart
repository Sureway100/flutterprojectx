import 'package:flutter/material.dart';
import 'dart:math';

final flipflop = Random();

class Roller extends StatefulWidget {
  const Roller({super.key});

  @override
  State<Roller> createState() => _RollerState();
}

class _RollerState extends State<Roller> {
  var randomImage = 'assets/images/dice-2.png';

  void rollDice() {
    setState(() {
      var randomImage2 = flipflop.nextInt(6) + 1;
      randomImage = 'assets/images/dice-$randomImage2.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            randomImage,
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: rollDice,
            child: const Text(
              "Roll Dice",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
