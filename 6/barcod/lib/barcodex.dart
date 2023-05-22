import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class Barcodex extends StatefulWidget {
  const Barcodex({super.key});

  @override
  State<Barcodex> createState() => _BarcodexState();
}

class _BarcodexState extends State<Barcodex> {
  final _textController = TextEditingController();
  String initText = "";

  void post() {
    setState(() {
      initText = _textController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BarcodeWidget(
              data: initText,
              barcode: Barcode.qrCode(),
              width: 200,
              height: 200,
              drawText: false,
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText: "Insert your url",
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: post,
                    icon: const Icon(Icons.post_add),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
