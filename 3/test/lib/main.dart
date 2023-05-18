import 'package:flutter/material.dart';

import "widgets/navigation.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Utility"),
        ),
        drawer: const NavDraw(),
        body: Container(
          color: const Color.fromARGB(255, 225, 222, 222),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/author_image.jpeg",
                  width: 250,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Flutter Engineer',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
