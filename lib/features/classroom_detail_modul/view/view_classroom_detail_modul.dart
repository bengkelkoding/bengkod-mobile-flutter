// ignore_for_file: non_constant_identifier_names

import 'package:bengkel_koding_mobile/helper/app_appbar.dart';
import 'package:bengkel_koding_mobile/helper/app_appbar_small.dart';
import 'package:bengkel_koding_mobile/helper/app_card_level_courses.dart';
import 'package:bengkel_koding_mobile/helper/app_listview_course.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ClassDetailModulView extends StatelessWidget {
  const ClassDetailModulView({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: const CustomAppBarSmall(),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: MediaQueryHeight * 0.18),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
