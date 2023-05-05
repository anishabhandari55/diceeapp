import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {  //WIDGET PART
  DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {  // STATE PART
  int leftbutton =1;
  int rightbutton =1;

  @override
  Widget build(BuildContext context) {      // initially 1
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16.0),
                child: TextButton(
                  onPressed: () {
                    setthedice();
                  },
                  child: Image.asset(
                    'images/dice$leftbutton.png',
                  ),
                ),
              ),
            ),
          
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16.0),
              child: TextButton(
                onPressed: () {
                  setthedice();   
                },
                child: Image.asset(
                  'images/dice$rightbutton.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void setthedice() {
    return setState(() {  //whenever the dice is pressed setstate is triggered resulting rebuilding the context and updating where required
                  rightbutton= Random().nextInt(6)+1;   //0-5 + 1 random generates any random between 0 to max-1.
                  print('Right button: $rightbutton');
                  leftbutton = Random().nextInt(6)+1;
                  print('Left button: $leftbutton');
                });
  }
}
