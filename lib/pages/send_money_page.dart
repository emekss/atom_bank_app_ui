import 'package:atom_bank_app_ui/components/send_money_column.dart';
import 'package:flutter/material.dart';

class SendMoneyPage extends StatefulWidget {
  const SendMoneyPage({super.key});

  @override
  State<SendMoneyPage> createState() => _SendMoneyPageState();
}

class _SendMoneyPageState extends State<SendMoneyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Money'),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/homePage');
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      backgroundColor: const Color.fromARGB(255, 14, 14, 14),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/backgroundimage.png',
            width: MediaQuery.of(context).size.width,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: SendMoneyColumn(),
          ),
        ],
      ),
    );
  }
}
