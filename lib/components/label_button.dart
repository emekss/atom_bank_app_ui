import 'package:flutter/material.dart';

class LabelButton extends StatelessWidget {
  const LabelButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/sendMoneyPage');
            },
            child: Column(
              children: [
                Image.asset('assets/images/send.png'),
                const Text('Send',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Column(
            children: [
              Image.asset('assets/images/request.png'),
              const Text('Request',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/payPage');
            },
            child: Column(
              children: [
                Image.asset('assets/images/pay.png'),
                const Text('Pay',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Column(
            children: [
              Image.asset('assets/images/more.png'),
              const Text('More', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
