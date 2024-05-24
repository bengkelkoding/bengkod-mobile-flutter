// ignore_for_file: non_constant_identifier_names

import 'package:bengkel_koding_mobile/helper/app_appbar.dart';
import 'package:bengkel_koding_mobile/helper/app_listview_lecture.dart';
import 'package:bengkel_koding_mobile/helper/app_listview_student.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../helper/app_card_your_courses.dart';

class ClassStrukturView extends StatelessWidget {
  const ClassStrukturView({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 135),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
              child: Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  return AppColor.whiteColor;
                                },
                              ),
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.hovered) ||
                                      states.contains(MaterialState.pressed)) {
                                    return AppColor.whiteColor;
                                  }
                                  return AppColor.whiteColor;
                                },
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7.0),
                                  side: BorderSide(
                                    color: AppColor.yellowColor,
                                    width: 4.0,
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {
                              context.push("/classroom/moduldashboard");
                            },
                            child: Text(
                              'Modul Kelas',
                              style: AppTextStyle.textStyle(
                                size: 12.0,
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  return Colors.white;
                                },
                              ),
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.hovered) ||
                                      states.contains(MaterialState.pressed)) {
                                    return Colors.transparent;
                                  }
                                  return AppColor.yellowColor;
                                },
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7.0),
                                  side: BorderSide(
                                    color: AppColor.yellowColor,
                                    width: 4.0,
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {
                              context.push("/classroom/strukturclassroom");
                            },
                            child: Text(
                              'Struktur Kelas',
                              style: AppTextStyle.textStyle(
                                size: 12.0,
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Tim Pengajar",
                            style: AppTextStyle.textStyle(
                              size: 24,
                              fontWeight: FontWeight.bold,
                              color: AppColor.whiteColor,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                              width: MediaQueryWidth,
                              height: 280,
                              decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(0, 2),
                                    color:
                                        AppColor.blackColor.withOpacity(0.25),
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                              child: SizedBox(
                                height: MediaQueryHeight * 0.23,
                                child: ListView.builder(
                                  padding: const EdgeInsets.only(top: 0),
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (context, index) {
                                    return const ListViewLecture();
                                  },
                                  itemCount: 4,
                                ),
                              )),
                          const SizedBox(height: 10),
                          Text(
                            "Anggota Kelas - M01",
                            style: AppTextStyle.textStyle(
                              size: 24,
                              fontWeight: FontWeight.bold,
                              color: AppColor.whiteColor,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: MediaQueryWidth,
                            height: 250,
                            decoration: BoxDecoration(
                              color: AppColor.whiteColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 2),
                                  color: AppColor.blackColor.withOpacity(0.25),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: SizedBox(
                              height: MediaQueryHeight * 0.23,
                              child: ListView.builder(
                                padding: const EdgeInsets.only(top: 0),
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context, index) {
                                  return const ListViewStudent();
                                },
                                itemCount: 4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
