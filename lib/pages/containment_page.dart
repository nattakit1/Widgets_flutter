import 'package:flutter/material.dart';

class ContainmentPage extends StatelessWidget {
  const ContainmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Containment")),
      body: Card(
        margin: const EdgeInsets.all(16),
        child: const ListTile(
          leading: Icon(Icons.person),
          title: Text("ListTile inside Card"),
        ),
      ),
    );
  }
}
