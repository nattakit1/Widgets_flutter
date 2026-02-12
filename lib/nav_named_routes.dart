import 'package:flutter/material.dart';
import '../widgets/code_display.dart';

class NavNamedRoutes extends StatelessWidget {
  const NavNamedRoutes({super.key});

  final sampleCodePush = "Navigator.pushNamed(context, '/named2');";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Using Named Routes')),
      body: Column(
        children: [
          ElevatedButton(
            child: const Text('Go to Named Screen 2'),
            onPressed: () => Navigator.pushNamed(context, '/named2'),
          ),
          const Divider(),
          Expanded(child: CodeDisplay(code: sampleCodePush)),
        ],
      ),
    );
  }
}
