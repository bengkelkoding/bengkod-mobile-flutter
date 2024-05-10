import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utils/app_colors_palette.dart';
import '../utils/app_font_styles.dart';

class AppCardYourCourse extends StatelessWidget {
  const AppCardYourCourse({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => context.push("/classroom"),
      child: Stack(
        children: [
          Container(
            width: MediaQueryWidth,
            height: MediaQueryHeight * 0.20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/image/image_course3.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: MediaQueryHeight * 0.14,
            bottom: 10,
            right: 10,
            left: 10,
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 4),
                      color: AppColor.blackColor.withOpacity(0.25),
                      blurRadius: 4),
                ],
              ),
              child: Center(
                child: Text(
                  "Mobile Developer",
                  style: AppTextStyle.textStyle(
                    size: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColor.whiteColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
