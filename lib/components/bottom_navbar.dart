import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return GNav(
        backgroundColor: Colors.white,
        color: Colors.grey,
        activeColor: Colors.black,
        tabs: [
          GButton(
            icon: Icons.home,
            onPressed: () {
              Navigator.pushNamed(context, '/homePage');
            },
          ),
          GButton(
            icon: Icons.horizontal_distribute,
            onPressed: () {
              Navigator.pushNamed(context, '/financePage');
            },
          ),
          GButton(
            icon: Icons.wallet,
            onPressed: () {
              Navigator.pushNamed(context, '/walletPage');
            },
          ),
          GButton(
            icon: Icons.person_2,
            onPressed: () {
              Navigator.pushNamed(context, '/profilePage');
            },
          ),
        ]);
  }
}
