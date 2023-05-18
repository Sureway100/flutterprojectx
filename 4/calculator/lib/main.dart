import 'package:calculator/view/buttons.dart';
import 'package:flutter/material.dart';
import 'view/buttonLayout.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.dark, primaryColor: Colors.blueGrey),
        title: "calculator",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Sci Calculator"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: const Text(
                      "History",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: const [Text("Result")],
              ),
              const SizedBox(),
              Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  ButtonLayout(),
                ],
              ),
            ],
          ),
        ));
  }
}
