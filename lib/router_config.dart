import 'package:go_router/go_router.dart';
import 'package:go_router_project/screens/home_screen.dart';
import 'package:go_router_project/screens/second_screen.dart';
import 'package:go_router_project/screens/sub_screen.dart';

final routerConfig = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => HomeScreen(title: 'Home Screen'),
      routes: <RouteBase>[
        GoRoute(
          path: 'sub-screen',
          builder: (context, state) =>
              SubScreen(title: 'Sub Screen of Home Screen'),
        ),
      ],
    ),
    GoRoute(
      path: '/second-screen',
      name: 'second-screen',
      builder: (context, state) => SecondScreen(title: 'Second Screen'),
    ),
  ],
);
