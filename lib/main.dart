import 'package:bengkel_koding_mobile/helper/app_text_field_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Image.asset("assets/image/logo.png")),
      ),
    );
  }
}
