import 'package:bengkel_koding_mobile/helper/app_button.dart';
import 'package:bengkel_koding_mobile/helper/app_card_dropdown_assigment.dart';
import 'package:flutter/material.dart';

import '../../../helper/app_appbar.dart';
import '../../../helper/navbar_bottom.dart';
import '../../../utils/app_colors_palette.dart';
import '../../../utils/app_font_styles.dart';

class AssignmentView extends StatefulWidget {
  const AssignmentView({super.key});

  @override
  State<AssignmentView> createState() => _AssignmentViewState();
}

class _AssignmentViewState extends State<AssignmentView> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    // ignore: non_constant_identifier_names
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: const CustomAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: Container(
            height: MediaQueryHeight,
            width: MediaQueryWidth,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: MediaQueryHeight * 0.18),
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppButton(
                    height: 37,
                    content: Text(
                      "Penugasan",
                      style: AppTextStyle.textStyle(
                          size: 20,
                          fontWeight: FontWeight.w500,
                          color: AppColor.whiteColor),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Flexible(
                    child: ListView.separated(
                      padding: const EdgeInsets.only(top: 0),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return const AppCardDropdown();
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const NavbarBottom(),
      ),
    );
  }
}
