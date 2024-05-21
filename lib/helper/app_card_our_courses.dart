import 'package:flutter/material.dart';

import '../utils/app_colors_palette.dart';
import '../utils/app_font_styles.dart';

class AppOurCardCourses extends StatelessWidget {
  String? image = "";
  String? nameCourse = "";
  int studentCount;
  String? description = "";
  AppOurCardCourses({
    super.key,
    required this.image,
    required this.nameCourse,
    required this.studentCount,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      width: 160,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 2),
            color: AppColor.blackColor.withOpacity(0.25),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQueryHeight * 0.10,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                child: Image.asset(
                  image!,
                  scale: 1,
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(height: 5),
          Text(
            nameCourse!,
            style: AppTextStyle.textStyle(
              size: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 2),
          SizedBox(
            height: MediaQueryHeight * 0.05,
            width: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  studentCount.toString(),
                  style: AppTextStyle.textStyle(
                    size: 8,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  description!,
                  style: AppTextStyle.textStyle(
                    size: 8,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
