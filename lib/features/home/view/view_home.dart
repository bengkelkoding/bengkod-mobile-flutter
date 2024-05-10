import 'package:bengkel_koding_mobile/helper/app_card_assignment.dart';
import 'package:bengkel_koding_mobile/helper/app_card_we_courses.dart';
import 'package:bengkel_koding_mobile/helper/navbar_bottom.dart';
import 'package:bengkel_koding_mobile/helper/app_card_courses.dart';
import 'package:bengkel_koding_mobile/helper/app_card_mentor.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../helper/app_card_your_courses.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    // ignore: non_constant_identifier_names
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQueryHeight * 0.20),
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/image/header_bengkod.png',
                  fit: BoxFit.cover,
                  width: 150,
                ),
                Container(
                  padding: const EdgeInsets.all(30),
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
                            backgroundColor: Colors.grey.shade400,
                            backgroundImage: const AssetImage(
                                "assets/image/profile_picture.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          width: MediaQueryWidth,
          height: MediaQueryHeight,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kursus Kami",
                  style: AppTextStyle.textStyle(
                    size: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColor.blackColor,
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: MediaQueryHeight * 0.23,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const AppWeCardCourses();
                    },
                    itemCount: 3,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "Kursus Yang Kamu Ikuti",
                  style: AppTextStyle.textStyle(
                    size: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColor.blackColor,
                  ),
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () => context.push("/classroom"),
                  child: const AppCardYourCourse(),
                ),
                const SizedBox(height: 15),
                Text(
                  "Mentor Bengkel Koding",
                  style: AppTextStyle.textStyle(
                    size: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColor.blackColor,
                  ),
                ),
                SizedBox(
                  height: MediaQueryHeight * 0.23,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const AppCardMentor();
                    },
                    itemCount: 8,
                  ),
                ),
                Text(
                  'Kursus Yang Sedang dikerjakan',
                  style: AppTextStyle.textStyle(
                    size: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColor.blackColor,
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: MediaQueryHeight * 0.35,
                  child: ListView(
                    children: const [
                      CustomCourseCard(),
                      CustomCourseCard(),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "Penugasan Terbaru",
                  style: AppTextStyle.textStyle(
                    size: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blackColor,
                  ),
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () => context.push("/assignment"),
                  child: SizedBox(
                    height: MediaQueryHeight * 0.25,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return const CustomAssignmentCard();
                      },
                      itemCount: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const NavbarBottom(),
      ),
    );
  }
}
