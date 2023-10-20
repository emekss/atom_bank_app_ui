import 'package:atom_bank_app_ui/components/bottom_navbar.dart';
import 'package:atom_bank_app_ui/components/label_button.dart';
import 'package:atom_bank_app_ui/components/product_column.dart';
import 'package:atom_bank_app_ui/util/card_add_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.jpeg'),
            radius: 35,
          )
        ],
        backgroundColor: Colors.transparent,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back',
              style: TextStyle(
                color: Color(0xFF47924B),
                fontSize: 16,
              ),
            ),
            Text(
              'Chukwuemeka',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/atmcard.png',
                  height: 180,
                ),
                const CardAddButton()
              ],
            ),
            const SizedBox(height: 15),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LabelButton(),
                Text(
                  'Recent Transaction',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                ProductColumn()
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
