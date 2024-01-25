import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNum1 = 1;
  int diceNum2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saved messages"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Image.asset("images/dice$diceNum1.png"),
              ),
              Expanded(
                child: Image.asset("images/dice$diceNum2.png"),
              ),
            ],
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                diceNum1 = Random().nextInt(6) + 1;
                diceNum2 = Random().nextInt(6) + 1;
              });
            },
            child: Text("Roll"),
            color: Colors.white60,
            splashColor: Colors.blue,
            highlightColor: Colors.greenAccent,
            hoverColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
