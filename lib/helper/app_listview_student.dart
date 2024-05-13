import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

class ListViewStudent extends StatelessWidget {
  const ListViewStudent({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
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
                  'Nadine Abigail Cokrowanito',
                  style: AppTextStyle.textStyle(
                    size: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'A11.2021.13459',
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
