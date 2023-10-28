import 'package:atom_bank_app_ui/util/log_out_button.dart';
import 'package:flutter/material.dart';

class ProfileColumn extends StatelessWidget {
  const ProfileColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              children: [
                Text(
                  'Chukwuemeka',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                Text(
                  '\$investoremeks',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const Text(
              'General',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset('assets/images/security.png'),
                  const SizedBox(height: 15),
                  Image.asset('assets/images/privacy.png'),
                ],
              ),
            ),
            const Text(
              'Help Center',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset('assets/images/atomhelp.png'),
                  const SizedBox(height: 15),
                  Image.asset('assets/images/find.png'),
                ],
              ),
            ),
            const LogOutButton()
          ],
        ),
      ),
    );
  }
}
