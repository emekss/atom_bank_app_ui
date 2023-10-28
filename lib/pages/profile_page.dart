import 'package:atom_bank_app_ui/components/profile_column.dart';
import 'package:atom_bank_app_ui/util/profile_picture.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
            const Padding(
              padding: EdgeInsets.only(top: 80),
              child: ProfileColumn(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, left: 145),
              child: ProfilePicture(),
            ),
          ],
        ),
      ),
    );
  }
}
