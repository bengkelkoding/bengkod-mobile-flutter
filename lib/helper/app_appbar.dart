// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../utils/app_colors_palette.dart';
import '../utils/app_font_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    return PreferredSize(
      preferredSize: const Size.fromHeight(134),
      child: Container(
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
        child: Column(
          children: [
            Image.asset(
              'assets/image/header_bengkod.png',
              fit: BoxFit.cover,
              width: 150,
            ),
            Container(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQueryHeight * 0.35,
                        child: Text('Hi, Fannan Gantengckcokcokc',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: AppTextStyle.textStyle(
                              size: 24,
                              fontWeight: FontWeight.w600,
                              color: AppColor.whiteColor,
                            )),
                      ),
                      const SizedBox(height: 2), // Jarak antara dua teks
                      Text(
                        'Ayo Kembangkan bakat kodingmu',
                        style: AppTextStyle.textStyle(
                          size: 12,
                          color: AppColor.whiteColor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Transform.scale(
                      scale: 1.80,
                      child: CircleAvatar(
                        radius: 21,
                        backgroundColor: Colors.grey.shade400,
                        child: const CircleAvatar(
                          radius: 19, // Adjust radius to accommodate border
                          backgroundImage:
                              AssetImage("assets/image/profile_picture.png"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(134);
}
