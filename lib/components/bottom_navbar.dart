import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const GNav(color: Colors.grey, activeColor: Colors.black, tabs: [
      GButton(icon: Icons.home),
      GButton(icon: Icons.horizontal_distribute),
      GButton(icon: Icons.wallet),
      GButton(icon: Icons.person_2),
    ]);
  }
}
