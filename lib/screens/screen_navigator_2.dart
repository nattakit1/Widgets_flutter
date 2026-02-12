import 'package:flutter/material.dart';
import '../widgets/code_display.dart';

class ScreenNavigator2 extends StatelessWidget {
  const ScreenNavigator2({super.key});

  final sampleCode = '''
Navigator.pop(context);
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigator — Screen 2')),
      body: Column(
        children: [
          ElevatedButton(
            child: const Text('Pop Back'),
            onPressed: () => Navigator.pop(context),
          ),
          const Divider(),
          Expanded(child: CodeDisplay(code: sampleCode)),
        ],
      ),
    );
  }
}
