import 'package:flutter/material.dart';

class ButtonClass extends StatelessWidget {
  final String text;

  void btnClick(String object) {
    // ignore: avoid_print
    print(object);
  }

  const ButtonClass({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 10.0),
      width: 100.0,
      height: 70.0,
      color: const Color.fromARGB(255, 124, 123, 119),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            btnClick(text);
          },
          child: Text(text),
        ),
      ),
    );
  }
}
