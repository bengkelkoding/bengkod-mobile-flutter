import 'package:bengkel_koding_mobile/features/auth/login/view/view_login.dart';
import 'package:bengkel_koding_mobile/features/classroom_modul_dashboard/view/view_modul_dashboard.dart';
import 'package:bengkel_koding_mobile/features/classroom_modul_list/view/view_classroom_modul_list.dart';
import 'package:bengkel_koding_mobile/features/classroom_struktur/view/view_classroom_struktur.dart';
import 'package:bengkel_koding_mobile/features/home/view/view_home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/assignment/view/view_assignment.dart';
import '../features/classroom/view/view_classroom.dart';
import '../features/navigation/view/view_navigation.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final homeNavigatorKey = GlobalKey<NavigatorState>();
final classroomNavigatorKey = GlobalKey<NavigatorState>();
final assignmentNavigatorKey = GlobalKey<NavigatorState>();
final profileNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const LoginPage();
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return NavigationView(state.matchedLocation, navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: homeNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: '/home',
              builder: (context, state) {
                return const HomeView();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: classroomNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: '/classroom',
              builder: (context, state) {
                return const ClassView();
              },
              routes: <RouteBase>[
                GoRoute(
                  parentNavigatorKey: classroomNavigatorKey,
                  path: 'strukturclassroom',
                  builder: (context, state) {
                    return const ClassStrukturView();
                  },
                ),
                GoRoute(
                  parentNavigatorKey: classroomNavigatorKey,
                  path: 'moduldashboard',
                  builder: (context, state) {
                    return const ClassModulDashboardView();
                  },
                  routes: <RouteBase>[
                    GoRoute(
                      parentNavigatorKey: classroomNavigatorKey,
                      path: 'modullist',
                      builder: (context, state) {
                        return const ClassModulListView();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: assignmentNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: '/assignment',
              builder: (context, state) {
                return const AssignmentView();
              },
              routes: <RouteBase>[
                GoRoute(
                  parentNavigatorKey: assignmentNavigatorKey,
                  path: 'assignment_detail',
                  builder: (context, state) {
                    return const AssignmentView();
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    )
  ],
);
