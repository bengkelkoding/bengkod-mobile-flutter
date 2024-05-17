// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_colors_palette.dart';
import '../utils/app_font_styles.dart';

class CustomAppBarSmall extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarSmall({super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 100),
      decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              color: AppColor.blackColor.withOpacity(0.25),
              blurRadius: 4,
            )
          ]),
      child: Container(
        margin: const EdgeInsets.only(right: 15, bottom: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: Transform.scale(
                scale: 0.65,
                child: CircleAvatar(
                  radius: 21,
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset("assets/icon/logo_bengkod.svg"),
                ),
              ),
            ),
            Text(
              "Bengkel Koding.",
              style: AppTextStyle.textStyle(
                color: AppColor.whiteColor,
                size: 11,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(19);
}
