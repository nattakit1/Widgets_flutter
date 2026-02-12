import 'package:flutter/material.dart';
import 'screens/screen_navigator_1.dart';

class NavUsingNavigator extends StatelessWidget {
  const NavUsingNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Using the Navigator')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open First Navigator Screen'),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (c) => const ScreenNavigator1(),
            ),
          ),
        ),
      ),
    );
  }
}
