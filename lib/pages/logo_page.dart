import 'package:atom_bank_app_ui/util/get_started_button.dart';
import 'package:flutter/material.dart';

class LogoPage extends StatelessWidget {
  const LogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 14, 14),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/backgroundimage.png',
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/atomlogo.png',
                          height: 26,
                        ),
                        const Text(
                          'AtomBank',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/blackcard.png',
                        height: 120,
                      ),
                      Image.asset(
                        'assets/images/whitecard.png',
                        height: 120,
                      ),
                      Image.asset(
                        'assets/images/greencard.png',
                        height: 120,
                      )
                    ],
                  ),
                  const Column(
                    children: [
                      Text(
                        'Easy Way To Save Your Money',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFEFF1F3),
                        ),
                      ),
                      Text(
                        'The best place to transact and save money',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF989898),
                        ),
                      ),
                    ],
                  ),
                  const GetStartedButton()
                ]),
          ),
        ],
      ),
    );
  }
}
