import 'package:bengkel_koding_mobile/helper/app_card_classroom.dart';
import 'package:bengkel_koding_mobile/helper/navbar_bottom.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

import '../../../helper/app_appbar.dart';

class ClassView extends StatelessWidget {
  const ClassView({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 37,
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 4),
                        color: AppColor.blackColor.withOpacity(0.25),
                        blurRadius: 4),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Kelas",
                    style: AppTextStyle.textStyle(
                      size: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColor.whiteColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return const CustomClassroomCard();
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 5),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const NavbarBottom(),
      ),
    );
  }
}
