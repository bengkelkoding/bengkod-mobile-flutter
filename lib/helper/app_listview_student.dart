import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

class ListViewStudent extends StatelessWidget {
  String? identityCode = "";
  String? name = "";
  String? image = "";
  ListViewStudent({
    super.key,
    required this.identityCode,
    required this.name,
    required this.image,
  });

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
            backgroundColor: AppColor.secondPrimaryColor,
            child: ClipOval(
              child: Image.network(
                image!,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Image.network(
                    'https://ui-avatars.com/api/?name=${name?.replaceAll(" ", "+")}',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  );
                },
              ),
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
                  '$name',
                  style: AppTextStyle.textStyle(
                    size: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '$identityCode',
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
