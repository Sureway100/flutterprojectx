import 'package:flutter/material.dart';
import 'package:udemy/roller.dart';

class MyApp extends StatelessWidget {
  const MyApp(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(text),
          backgroundColor: const Color.fromARGB(255, 150, 95, 237),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 29, 1, 73),
              Color.fromARGB(255, 57, 2, 134)
            ]),
          ),
          child: const Roller(),
        ),
      ),
    );
  }
}

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorx, this.colory, {super.key});

  final Color colorx;
  final Color colory;

  @override
  Widget build(context) {
    return (Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorx, colory],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    ));
  }
}
