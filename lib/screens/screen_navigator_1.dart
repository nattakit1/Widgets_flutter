import 'package:flutter/material.dart';
import '../widgets/code_display.dart';
import 'screen_navigator_2.dart';

class ScreenNavigator1 extends StatelessWidget {
  const ScreenNavigator1({super.key});

  final sampleCode = '''
Navigator.push(
  context,
  MaterialPageRoute(builder: (c) => const ScreenNavigator2()),
);
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigator — Screen 1')),
      body: Column(
        children: [
          ElevatedButton(
            child: const Text('Push to Screen 2'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (c) => const ScreenNavigator2()),
            ),
          ),
          const Divider(),
          Expanded(child: CodeDisplay(code: sampleCode)),
        ],
      ),
    );
  }
}
