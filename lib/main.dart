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
        body: Center(
          child: AppTextFieldForm(
            TextEditingController(),
            hintText: "Bakar",
            func: (value) {},
            icon: Icon(Icons.abc),
            obscureText: false,
            text: "Broo",
          ),
        ),
      ),
    );
  }
}
