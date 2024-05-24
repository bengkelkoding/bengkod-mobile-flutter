// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CustomClassroomCard extends StatelessWidget {
  String? nameClassroom = "";
  String? description = "";
  String? time = "";
  String? day = "";
  String? room = "";
  int finalScore;
  CustomClassroomCard(
      {super.key,
      required this.nameClassroom,
      required this.description,
      required this.time,
      required this.day,
      required this.room,
      required this.finalScore});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push("/classroom/strukturclassroom"),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColor.primaryColor,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 2),
                color: AppColor.blackColor.withOpacity(0.25),
                blurRadius: 4,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nameClassroom!,
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColor.whiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        description!,
                        style: TextStyle(
                          fontSize: 10,
                          color: AppColor.whiteColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icon/icon_calender.svg',
                            width: 20,
                            height: 20,
                            // ignore: deprecated_member_use
                            color: AppColor.whiteColor,
                          ),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Hari  : ',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: AppColor.whiteColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    day!,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: AppColor.whiteColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Jam : ',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: AppColor.whiteColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    time!,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: AppColor.whiteColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icon/icon_clasroom_white.svg',
                            width: 20,
                            height: 20,
                            // ignore: deprecated_member_use
                            color: AppColor.whiteColor,
                          ),
                          const SizedBox(width: 10),
                          Row(
                            children: [
                              Text(
                                'Ruangan : ',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppColor.whiteColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                room!,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppColor.whiteColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                        child: Text(
                          'Nilai Akhir',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColor.whiteColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        height: 85,
                        width: 130,
                        decoration: BoxDecoration(
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            finalScore.toString(),
                            style: TextStyle(
                              fontSize: 40,
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
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
      ),
    );
  }
}
