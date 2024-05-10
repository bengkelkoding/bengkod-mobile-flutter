import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

class ListViewStudent extends StatelessWidget {
  const ListViewStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Gabung group WhatsApp untuk bisa mendapatkan\ninformasi seputar kelas dan dapat berdiskusi",
              style: AppTextStyle.textStyle(
                color: AppColor.blackColor,
                size: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "https://chat.whatsapp.com/ETD93Wb90zn7MqMN6zWDbg",
              style: AppTextStyle.textStyle(
                color: AppColor.secondPrimaryColor,
                size: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
