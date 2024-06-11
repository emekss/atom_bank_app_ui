import 'package:atom_bank_app_ui/components/label_button.dart';
import 'package:atom_bank_app_ui/components/product_column.dart';
import 'package:atom_bank_app_ui/util/card_add_button.dart';
import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back',
              style: TextStyle(
                color: Colors.green,
                fontSize: 18,
              ),
            ),
            Text(
              'Chukwuemeka',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.jpeg'),
            radius: 35,
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                  SizedBox(height: 5),
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
      ),
    );
  }
}
