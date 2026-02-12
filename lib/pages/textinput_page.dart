import 'package:flutter/material.dart';

class TextInputPage extends StatelessWidget {
  const TextInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text Input")),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: TextField(
          decoration: InputDecoration(
            labelText: "Enter text",
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
