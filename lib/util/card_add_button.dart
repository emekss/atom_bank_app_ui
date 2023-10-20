import 'package:flutter/material.dart';

class CardAddButton extends StatelessWidget {
  const CardAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.black,
      ),
      height: 180,
      width: 46,
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
