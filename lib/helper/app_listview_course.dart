import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

class ListViewCourse extends StatelessWidget {
  const ListViewCourse({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    // ignore: non_constant_identifier_names
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 45,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: AppColor.whiteColor, // Customize container color
          borderRadius: BorderRadius.circular(8), // Customize border radius
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "1. Pengenalan Flutter",
                  textAlign: TextAlign.start,
                  style: AppTextStyle.textStyle(
                    color: AppColor.blackColor,
                    size: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 25,
                color: AppColor.blackColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
