import 'package:flutter/material.dart';

class ScreenNamed1 extends StatelessWidget {
  const ScreenNamed1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Named Route 1')),
      body: const Center(child: Text('THIS IS SCREEN 1 (Named)')),
    );
  }
}
