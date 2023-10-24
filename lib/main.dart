import 'package:atom_bank_app_ui/pages/finance_page.dart';
import 'package:atom_bank_app_ui/pages/home_page.dart';
import 'package:atom_bank_app_ui/pages/logo_page.dart';
import 'package:atom_bank_app_ui/pages/wallet_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LogoPage(),
      routes: {
        '/homePage': (context) => const HomePage(),
        '/financePage': (context) => const FinancePage(),
        '/walletPage': (context) => const WalletPage(),
        '/profilePage': (context) => const FinancePage(),
      },
    );
  }
}
