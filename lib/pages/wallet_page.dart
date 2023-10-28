import 'package:atom_bank_app_ui/components/wallet_column.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 14, 14),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/backgroundimage.png',
              width: MediaQuery.of(context).size.width,
            ),
            const Center(
              child: Column(children: [
                Column(
                  children: [
                    Text(
                      'Total Balance',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '\$1929.21',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 47,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    WalletColumn(),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
