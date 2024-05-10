import 'package:bengkel_koding_mobile/helper/app_card_assignment.dart';
import 'package:bengkel_koding_mobile/helper/app_card_mentor.dart';
import 'package:bengkel_koding_mobile/helper/app_card_we_courses.dart';
import 'package:bengkel_koding_mobile/helper/navbar_bottom.dart';
import 'package:bengkel_koding_mobile/helper/app_card_courses.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../helper/app_card_your_courses.dart';

class ClassStrukturView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQueryHeight * 0.18),
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.only(
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
                  padding: EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
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
                          SizedBox(height: 2), // Jarak antara dua teks
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
                            backgroundImage:
                                AssetImage("assets/image/profile_picture.png"),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(child: AppCardYourCourse()),
              ),
              Container(
                width: MediaQueryWidth,
                height: MediaQueryHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: AppColor.primaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.whiteColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('Modul Kelas',
                              style: AppTextStyle.textStyle(
                                  size: 12,
                                  color: AppColor.primaryColor,
                                  fontWeight: FontWeight.bold))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.whiteColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('Struktur Kelas',
                              style: AppTextStyle.textStyle(
                                  size: 12,
                                  color: AppColor.primaryColor,
                                  fontWeight: FontWeight.bold))),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: NavbarBottom(),
      ),
    );
  }
}
