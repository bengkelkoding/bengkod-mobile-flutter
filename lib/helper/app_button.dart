import 'package:flutter/material.dart';

Widget AppButton({
  Color? color,
  List<BoxShadow>? boxShadow,
  Widget? content,
  Border? border,
}) {
  return Container(
    height: 47,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: color == null ? Colors.black : color,
      boxShadow: boxShadow,
      border: border,
    ),
    child: Center(
      child: content,
    ),
  );
}
