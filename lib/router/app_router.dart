import 'package:flutter/material.dart';

class MyRouterDelegate extends RouterDelegate<String>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<String> {

  final navigatorKey = GlobalKey<NavigatorState>();
  String _path = '/router1';

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(child: RouterScreen1(onNext: () {
          _path = '/router2';
          notifyListeners();
        })),
        if (_path == '/router2')
          MaterialPage(child: RouterScreen2(onBack: () {
            _path = '/router1';
            notifyListeners();
          })),
      ],
      onPopPage: (route, result) {
        _path = '/router1';
        notifyListeners();
        return route.didPop(result);
      },
    );
  }

  @override
  Future<void> setNewRoutePath(String configuration) async {}
}

class RouterScreen1 extends StatelessWidget {
  final VoidCallback onNext;
  const RouterScreen1({required this.onNext, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Router — Screen 1')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Router Screen 2'),
          onPressed: onNext,
        ),
      ),
    );
  }
}

class RouterScreen2 extends StatelessWidget {
  final VoidCallback onBack;
  const RouterScreen2({required this.onBack, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Router — Screen 2')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Back to Router Screen 1'),
          onPressed: onBack,
        ),
      ),
    );
  }
}
