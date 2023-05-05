import 'package:flutter/material.dart';
import 'dicepage.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 221, 182, 195),
    appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 166, 122, 136),
      title: const Text(
        'Dicee',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Vollkorn',
        ),
      ),
    ),
    body: DiceApp(),
  )));
}
