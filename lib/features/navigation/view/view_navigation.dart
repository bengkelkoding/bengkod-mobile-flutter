import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../helper/navbar_bottom.dart';

class NavigationView extends StatelessWidget {
  const NavigationView(
    this.location,
    this.navigationShell, {
    super.key,
  });
  final String location;
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Padding(
              padding: (location.startsWith("/profile"))
                  ? const EdgeInsets.all(0)
                  : const EdgeInsets.only(bottom: 40),
              child: navigationShell,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: NavbarBottom(
                currentIndex: _calculateSelectedIndex(context),
                onTap: _onTap,
              ),
            ),
          ],
        ),
      ),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    if (location.startsWith('/home')) {
      return 0;
    }
    if (location.startsWith('/classroom')) {
      return 1;
    }
    if (location.startsWith('/assignment')) {
      return 2;
    }
    if (location.startsWith('/profile')) {
      return 3;
    }
    return 0;
  }

  void _onTap(index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
