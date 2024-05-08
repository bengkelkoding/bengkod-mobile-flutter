import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle textStyle({
    double size = 12,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
  }) =>
      GoogleFonts.poppins(
        textStyle: TextStyle(
            fontSize: size, fontWeight: fontWeight, fontStyle: fontStyle),
      );
}
