import 'package:flutter/material.dart';
import 'router/app_router.dart';

class NavUsingRouter extends StatelessWidget {
  const NavUsingRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return Router(
      routerDelegate: MyRouterDelegate(),
      backButtonDispatcher: RootBackButtonDispatcher(),
    );
  }
}
