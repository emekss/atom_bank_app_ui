import 'package:flutter/material.dart';

class BalanceColumn extends StatelessWidget {
  const BalanceColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Total Balance',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        const Text(
          '\$1929.21',
          style: TextStyle(
            color: Colors.white,
            fontSize: 47,
            fontWeight: FontWeight.bold,
          ),
        ),
        RichText(
            text: const TextSpan(
                text: '-25',
                style: TextStyle(color: Colors.red),
                children: [
              TextSpan(
                text: ' from the last month',
                style: TextStyle(color: Colors.white),
              )
            ]))
      ],
    );
  }
}
