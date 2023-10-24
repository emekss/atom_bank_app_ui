import 'package:atom_bank_app_ui/util/saving_plan_button.dart';
import 'package:atom_bank_app_ui/util/wallet_item_list.dart';
import 'package:flutter/material.dart';

class WalletColumn extends StatelessWidget {
  const WalletColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 702,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SaveButton(),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                  itemCount: wallet.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      wallet[index]['image'],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
