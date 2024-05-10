import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';

class CustomAssignmentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColor.whiteColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            color: AppColor.blackColor.withOpacity(0.25),
            blurRadius: 4,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Studi Kasus',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColor.blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Tersisa 2 Jam lagi',
                        style: AppTextStyle.textStyle(
                          size: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColor.primaryColor,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(height: 7),
                  Text(
                    'Quiz ini ditujukan untuk mengukur pemahaman\nmahasiswa  terkait modul mobile Bengkel Koding... ',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Belum Upload',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 2),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Lihat Selengkapnya',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: AppColor.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
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
                      'Nilai',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColor.blackColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Container(
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        '90',
                        style: TextStyle(
                          fontSize: 70,
                          color: AppColor.whiteColor,
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
    );
  }
}
