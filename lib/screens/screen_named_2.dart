import 'package:flutter/material.dart';
import '../widgets/code_display.dart';

class ScreenNamed2 extends StatelessWidget {
  const ScreenNamed2({super.key});

  final sampleCode = "Navigator.pop(context);";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Named Route 2')),
      body: Column(
        children: [
          ElevatedButton(
            child: const Text('Go Back'),
            onPressed: () => Navigator.pop(context),
          ),
          const Divider(),
          Expanded(child: CodeDisplay(code: sampleCode)),
        ],
      ),
    );
  }
}
