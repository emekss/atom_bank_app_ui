import 'package:flutter/material.dart';

class FinanceColumn extends StatelessWidget {
  const FinanceColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 685,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/month.png'),
            Center(
              child: Image.asset('assets/images/graph.png'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Overview',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/income.png'),
                    Image.asset('assets/images/outcome.png'),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
