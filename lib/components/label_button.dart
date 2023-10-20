import 'package:atom_bank_app_ui/util/label_list.dart';
import 'package:flutter/material.dart';

class LabelButton extends StatelessWidget {
  const LabelButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Image.asset(items[index]['image']),
                Text(items[index]['title'])
              ],
            ),
          );
        },
      ),
    );
  }
}
