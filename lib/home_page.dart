import 'package:flutter/material.dart';
import 'pages/actions_page.dart';
import 'pages/communication_page.dart';
import 'pages/containment_page.dart';
import 'package:go_router/go_router.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Material Widgets App")),
      body: ListView(
        children: [

          // Navigator.push
          ListTile(
            title: const Text("Actions (Navigator)"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ActionsPage()),
              );
            },
          ),

          // Named Route
          ListTile(
            title: const Text("Communication (Named Route)"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CommunicationPage()),
              );
            },
          ),

          // Navigator.push
          ListTile(
            title: const Text("Containment (Navigator)"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ContainmentPage()),
              );
            },
          ),

          // Router (GoRouter)
          ListTile(
            title: const Text("Selection (Router)"),
            onTap: () => context.push('/selection'),
          ),
          ListTile(
            title: const Text("Text Input (Router)"),
            onTap: () => context.push('/textinput'),
          ),
          ListTile(
            title: const Text("Buttons (Router)"),
            onTap: () => context.push('/buttons'),
          ),
          ListTile(
            title: const Text("Navigation (Router)"),
            onTap: () => context.push('/navigation'),
          ),
        ],
      ),
    );
  }
}
