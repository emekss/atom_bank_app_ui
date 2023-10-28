import 'package:atom_bank_app_ui/components/bottom_navbar.dart';
import 'package:atom_bank_app_ui/pages/finance_page.dart';
import 'package:atom_bank_app_ui/pages/mainHome_page.dart';
import 'package:atom_bank_app_ui/pages/profile_page.dart';
import 'package:atom_bank_app_ui/pages/wallet_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//selected index to control the bottom nav bar
  int _selectedIndex = 0;

//method updates index when user taps on bottom nav bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//Pages to display
  final List<Widget> _pages = [
    //homepage
    const MainHomePage(),

    //financepage
    const FinancePage(),

//walletpage
    const WalletPage(),

//profilepage
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
