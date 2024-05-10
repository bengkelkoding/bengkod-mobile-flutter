import 'package:bengkel_koding_mobile/features/auth/login/view/view_login.dart';
import 'package:bengkel_koding_mobile/features/home/view/view_home.dart';
import 'package:go_router/go_router.dart';

import '../features/classroom/view/view_classroom.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginPage(),
      routes: <RouteBase>[
        GoRoute(
          path: 'home',
          builder: (context, state) {
            return HomeView();
          },
        ),
        GoRoute(
          path: 'classroom',
          builder: (context, state) {
            return ClassView();
          },
        ),
      ],
    ),
  ],
);
