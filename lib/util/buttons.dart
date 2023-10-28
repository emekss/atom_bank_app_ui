// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;
  const MyButton(
      {super.key,
      required this.buttonText,
      required this.color,
      required this.buttonTapped,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
              color: textColor, fontSize: 41, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
