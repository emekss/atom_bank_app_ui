import 'package:atom_bank_app_ui/util/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SendMoneyColumn extends StatelessWidget {
  const SendMoneyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 850,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/johndoe.png'),
          ),
          const Expanded(child: CustomButtons()),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              SlideAction(
                  sliderRotate: false,
                  text: 'Slide to Send Money',
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  outerColor: Colors.green,
                  elevation: 0,
                  onSubmit: () {
                    return showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Confirm Payment'),
                            content: Container(
                              child: const Text(
                                  'Are you sure you want to send \$5000 to \$johndoe'),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Yes',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                      Text(
                                        'No',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        });
                  }),
            ]),
          ),
        ]),
      ),
    );
  }
}
