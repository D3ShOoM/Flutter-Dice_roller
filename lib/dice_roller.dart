import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var diceRoll = 6;
  void rollDice() {
    setState(() {
      diceRoll = randomizer.nextInt(6) + 1;
    });
    debugPrint('Rolling dice to $diceRoll...');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-images/dice-$diceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20,),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 20,
              // ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text("Roll Dice"),
        )
      ],
    );
  }
}
