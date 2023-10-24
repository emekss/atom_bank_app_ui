import 'package:atom_bank_app_ui/components/balance_column.dart';
import 'package:atom_bank_app_ui/components/bottom_navbar.dart';
import 'package:atom_bank_app_ui/components/finance_column.dart';
import 'package:flutter/material.dart';

class FinancePage extends StatefulWidget {
  const FinancePage({super.key});

  @override
  State<FinancePage> createState() => _FinancePageState();
}

class _FinancePageState extends State<FinancePage> {
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
              child: Column(
                children: [
                  BalanceColumn(),
                  SizedBox(height: 20),
                  FinanceColumn(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
