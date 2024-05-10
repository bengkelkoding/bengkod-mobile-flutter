import 'package:bengkel_koding_mobile/features/auth/login/view/view_login.dart';
import 'package:bengkel_koding_mobile/features/classroom_struktur/view/view_classroom_struktur.dart';
import 'package:bengkel_koding_mobile/features/home/view/view_home.dart';
import 'package:go_router/go_router.dart';

import '../features/assignment/view/view_assignment.dart';
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
            return const HomeView();
          },
        ),
        GoRoute(
          path: 'classroom',
          builder: (context, state) {
            return const ClassView();
          },
        ),
        GoRoute(
          path: 'strukturclassroom',
          builder: (context, state) {
            return const ClassStrukturView();
          },
        ),
        GoRoute(
          path: 'assignment',
          builder: (context, state) {
            return const AssignmentView();
          },
        ),
      ],
    ),
  ],
);
