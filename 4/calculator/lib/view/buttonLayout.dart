import 'package:flutter/material.dart';
import 'buttons.dart';

class ButtonLayout extends StatelessWidget {
  const ButtonLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: const [
              ButtonClass(
                text: 'AC',
              ),
              ButtonClass(
                text: 'C',
              ),
              ButtonClass(
                text: '<',
              ),
              ButtonClass(
                text: '/',
              ),
            ],
          ),
          Row(
            children: const [
              ButtonClass(
                text: '9',
              ),
              ButtonClass(
                text: '8',
              ),
              ButtonClass(
                text: '7',
              ),
              ButtonClass(
                text: 'X',
              ),
            ],
          ),
          Row(
            children: const [
              ButtonClass(
                text: '6',
              ),
              ButtonClass(
                text: '5',
              ),
              ButtonClass(
                text: '4',
              ),
              ButtonClass(
                text: '-',
              ),
            ],
          ),
          Row(
            children: const [
              ButtonClass(
                text: '3',
              ),
              ButtonClass(
                text: '2',
              ),
              ButtonClass(
                text: '1',
              ),
              ButtonClass(
                text: '+',
              ),
            ],
          ),
          Row(
            children: const [
              ButtonClass(
                text: '+/-',
              ),
              ButtonClass(
                text: '0',
              ),
              ButtonClass(
                text: '00',
              ),
              ButtonClass(
                text: '=',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
