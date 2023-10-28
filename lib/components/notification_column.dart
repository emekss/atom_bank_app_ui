import 'package:flutter/material.dart';

class NotificationColumn extends StatelessWidget {
  const NotificationColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 780,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Today',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.asset('assets/images/transfer.png'),
                  const SizedBox(height: 15),
                  Image.asset('assets/images/promo.png'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Yesterday',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.asset('assets/images/transfer2.png'),
                  const SizedBox(height: 15),
                  Image.asset('assets/images/internet.png'),
                  const SizedBox(height: 15),
                  Image.asset('assets/images/promo.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
