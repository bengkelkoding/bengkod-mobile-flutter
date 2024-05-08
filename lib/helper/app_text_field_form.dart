import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

Widget AppTextFieldForm(
  TextEditingController? controller, {
  String text = "",
  String hintText = "",
  Icon? icon,
  bool obscureText = false,
  void Function(String value)? func,
}) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppTextStyle.textStyle(size: 16, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 7,
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            fillColor: Color(0xFFD9D9D9),
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            hintText: hintText,
            prefixIcon: icon == null ? Icon(Icons.person) : icon,
          ),
          obscureText: obscureText,
          maxLines: 1,
          autocorrect: false,
          onChanged: (value) => func!(value),
        ),
      ],
    ),
  );
}
