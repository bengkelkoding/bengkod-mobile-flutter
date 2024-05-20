import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle2 {
  static TextStyle textStyle({
    Color? color,
    double size = 12,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
  }) =>
      GoogleFonts.puritan(
        textStyle: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
        ),
      );
}
