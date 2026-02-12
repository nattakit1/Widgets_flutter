import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buttons")),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: const Text("Elevated")),
          TextButton(onPressed: () {}, child: const Text("Text")),
          OutlinedButton(onPressed: () {}, child: const Text("Outlined")),
        ],
      ),
    );
  }
}
