import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

mixin AppColor {
  static const mainClr = Color.fromRGBO(15, 39, 115, 1);
  static const red = Color.fromRGBO(195, 3, 2, 1);
  static const orange = Color.fromRGBO(230, 46, 4, 1);
}

mixin AppIcon {
  static const qr = 'assets/icons/qr.png';
}

TextStyle get titleStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 16.sp, fontWeight: FontWeight.w500, color: Colors.black));
}

TextStyle get subTitleStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 14.5.sp, fontWeight: FontWeight.w500, color: Colors.black));
}

TextStyle get headingStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.black));
}

class AppColors {
  /*Colors*/
  static Color textColor1 = const Color(0xFF989acd);
  static Color textColor2 = const Color(0xFF878593);
  static Color bigTextColor = const Color(0xFF2e2e31);
  static Color mainColor = const Color(0xFF5d69b3);
  static Color starColor = const Color(0xFFe7bb4e);
  static Color mainTextColor = const Color(0xFFababad);
  static Color buttonBackground = const Color(0xFFf1f1f9);
}
