import 'package:go_router/go_router.dart';
import 'home_page.dart';
import 'pages/actions_page.dart';
import 'pages/communication_page.dart';
import 'pages/containment_page.dart';
import 'pages/selection_page.dart';
import 'pages/textinput_page.dart';
import 'pages/buttons_page.dart';
import 'pages/navigation_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (c, s) => const HomePage()),
    GoRoute(path: '/selection', builder: (c, s) => const SelectionPage()),
    GoRoute(path: '/textinput', builder: (c, s) => const TextInputPage()),
    GoRoute(path: '/buttons', builder: (c, s) => const ButtonsPage()),
    GoRoute(path: '/navigation', builder: (c, s) => const NavigationPage()),
  ],
);
