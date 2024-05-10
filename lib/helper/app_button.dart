import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget AppButton({
  Color? color,
  List<BoxShadow>? boxShadow,
  Widget? content,
  Border? border,
  double? height,
}) {
  return Container(
    height: height ?? 47,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: color ?? AppColor.primaryColor,
      boxShadow: boxShadow,
      border: border,
    ),
    child: Center(
      child: content,
    ),
  );
}
