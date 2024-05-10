import 'package:bengkel_koding_mobile/features/classroom_struktur/view/view_classroom_struktur.dart';
import 'package:flutter/material.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CustomClassroomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go("/strukturclassroom"),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColor.primaryColor,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 2),
                color: AppColor.blackColor.withOpacity(0.25),
                blurRadius: 4,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BENGKEL KODING - M01',
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColor.whiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Dicourse ini kita akan belajar\nMobile Developer menggunakan Flutter. ',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColor.whiteColor,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            child: SvgPicture.asset(
                              'assets/icon/icon_calender.svg',
                              width: 20,
                              height: 20,
                              color: AppColor.whiteColor,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hari  : Jumat',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.whiteColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Jam : 13.00 -14.10',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.whiteColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Container(
                            child: SvgPicture.asset(
                              'assets/icon/icon_clasroom_white.svg',
                              width: 20,
                              height: 20,
                              color: AppColor.whiteColor,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Ruangan : H.6.2',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColor.whiteColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
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
                            fontSize: 20,
                            color: AppColor.whiteColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 2),
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            '90',
                            style: TextStyle(
                              fontSize: 70,
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
