import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

class ListViewLecture extends StatelessWidget {
  const ListViewLecture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 25,
            backgroundColor:
                AppColor.secondPrimaryColor, // Set background color
            child: const CircleAvatar(
              radius: 23, // Adjust radius to accommodate border
              backgroundImage: AssetImage("assets/image/mentor.jpeg"),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fahri Firdausillah, S.Kom, M.Cs',
                style: AppTextStyle.textStyle(
                  size: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Dosen Pengampu',
                style: AppTextStyle.textStyle(
                  size: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
