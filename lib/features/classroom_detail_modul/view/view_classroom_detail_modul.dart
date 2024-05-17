// ignore_for_file: non_constant_identifier_names

import 'package:bengkel_koding_mobile/helper/app_appbar_small.dart';
import 'package:flutter/material.dart';

class ClassDetailModulView extends StatelessWidget {
  const ClassDetailModulView({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: const CustomAppBarSmall(),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: MediaQueryHeight * 0.18),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
