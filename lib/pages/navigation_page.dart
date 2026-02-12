import 'package:flutter/material.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigation")),
      body: const Center(
        child: Text("This page demonstrates navigation routing."),
      ),
    );
  }
}
