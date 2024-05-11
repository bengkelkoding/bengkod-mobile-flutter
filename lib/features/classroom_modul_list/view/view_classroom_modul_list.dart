// ignore_for_file: non_constant_identifier_names

import 'package:bengkel_koding_mobile/helper/app_appbar.dart';
import 'package:bengkel_koding_mobile/helper/app_listview_lecture.dart';
import 'package:bengkel_koding_mobile/helper/app_listview_student.dart';
import 'package:bengkel_koding_mobile/helper/navbar_bottom.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../helper/app_card_your_courses.dart';

class ClassModulListView extends StatelessWidget {
  const ClassModulListView({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: MediaQueryHeight * 0.18),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(15),
                child: AppCardYourCourse(),
              ),
              Container(
                width: MediaQueryWidth,
                height: MediaQueryHeight,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: AppColor.primaryColor,
                ),
                child: Column(children: [
                  
                ]),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const NavbarBottom(),
      ),
    );
  }
}
