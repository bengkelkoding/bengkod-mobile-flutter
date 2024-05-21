import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: non_constant_identifier_names
Widget AppTextFieldForm(
  TextEditingController? controller, {
  String text = "",
  String hintText = "",
  String icon = "",
  String? suffixIcon,
  bool obscureText = false,
  void Function()? iconFunc,
  void Function(String value)? func,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: AppTextStyle.textStyle(size: 16, fontWeight: FontWeight.w400),
      ),
      const SizedBox(
        height: 7,
      ),
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: AppColor.blackColor),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: AppColor.primaryColor)),
          hintText: hintText,
          hintStyle:
              AppTextStyle.textStyle(size: 15, fontWeight: FontWeight.w300),
          prefixIcon: Align(
            widthFactor: 2.5,
            heightFactor: 1.0,
            child: SvgPicture.asset(icon),
          ),
          suffixIcon: Align(
            widthFactor: 2.5,
            heightFactor: 1.0,
            child: suffixIcon != null
                ? GestureDetector(
                    onTap: iconFunc,
                    child: SvgPicture.asset(suffixIcon),
                  )
                : null,
          ),
        ),
        obscureText: obscureText,
        maxLines: 1,
        autocorrect: false,
        onChanged: (value) => func!(value),
        style: AppTextStyle.textStyle(size: 15, fontWeight: FontWeight.w500),
      ),
    ],
  );
}
