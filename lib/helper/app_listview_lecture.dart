import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

class ListViewLecture extends StatelessWidget {
  const ListViewLecture({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    // ignore: non_constant_identifier_names
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 23,
            backgroundColor:
                AppColor.secondPrimaryColor, // Set background color
            child: const CircleAvatar(
              radius: 21, // Adjust radius to accommodate border
              backgroundImage: AssetImage("assets/image/mentor.jpeg"),
            ),
          ),
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fahri Firdausillah, S.Kom, M.Cs',
                  style: AppTextStyle.textStyle(
                    size: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Dosen Pengampu',
                  style: AppTextStyle.textStyle(
                    size: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
