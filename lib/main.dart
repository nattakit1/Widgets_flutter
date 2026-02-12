import 'package:flutter/material.dart';
import 'nav_using_navigator.dart';
import 'nav_named_routes.dart';
import 'nav_using_router.dart';
import 'screens/screen_named_1.dart';
import 'screens/screen_named_2.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
      routes: {
        '/named1': (context) => const ScreenNamed1(),
        '/named2': (context) => const ScreenNamed2(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation & Routing Demo')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('1\\. Using the Navigator'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (c) => const NavUsingNavigator(),
              ),
            ),
          ),
          ListTile(
            title: const Text('2\\. Using named routes'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (c) => const NavNamedRoutes()),
            ),
          ),
          ListTile(
            title: const Text('3\\. Using the Router'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (c) => const NavUsingRouter()),
            ),
          ),
        ],
      ),
    );
  }
}
