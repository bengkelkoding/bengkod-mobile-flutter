import 'package:bengkel_koding_mobile/routers/router.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: ThemeData(scaffoldBackgroundColor: AppColor.whiteColor),
    );
  }
}
