import 'package:atom_bank_app_ui/components/notification_column.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {},
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
            padding: EdgeInsets.only(top: 50),
            child: NotificationColumn(),
          )
        ],
      ),
    );
  }
}
