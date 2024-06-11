import 'package:atom_bank_app_ui/util/buttons.dart';
import 'package:flutter/material.dart';

class CustomButtons extends StatefulWidget {
  const CustomButtons({super.key});

  @override
  State<CustomButtons> createState() => _CustomButtonsState();
}

class _CustomButtonsState extends State<CustomButtons> {
  var userInput = '';

  final List<String> buttons = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '.',
    '0',
    '<'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'USD(US DOLLAR)',
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ],
          ),
          SizedBox(
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    userInput,
                    style: const TextStyle(
                        fontSize: 50,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (
                  BuildContext context,
                  int index,
                ) {
                  // delete button
                  if (index == 11) {
                    return MyButton(
                      buttonTapped: () {
                        setState(() {
                          userInput =
                              userInput.substring(0, userInput.length - 1);
                        });
                      },
                      buttonText: buttons[index],
                      color: Colors.white,
                      textColor: Colors.black,
                    );
                  } else {
                    return MyButton(
                      buttonTapped: () {
                        setState(() {
                          userInput += buttons[index];
                        });
                      },
                      buttonText: buttons[index],
                      color: Colors.white,
                      textColor: Colors.black,
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}
