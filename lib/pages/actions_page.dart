import 'package:flutter/material.dart';

class ActionsPage extends StatelessWidget {
  const ActionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Actions")),
      body: Column(
        children: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
          const Text("IconButton Example"),
        ],
      ),
    );
  }
}
