import 'package:flutter/material.dart';

/// Singleton Theme Helper (no dark/light mode switching)
class ThemeHelper {
  static final ThemeHelper _instance = ThemeHelper._internal();
  ThemeHelper._internal();
  factory ThemeHelper() => _instance;
  AppColors themeColor() => AppColors();
  TextStyles themeText() => TextStyles();
}

/// Unified App Colors (no dark/light mode separation)
class AppColors {
  Color get screenBackgroundColor => const Color(0xffF9FAFB);
  Color get primaryColor => const Color(0xff8869F3);
  Color get textColor => const Color(0xff1F1F1F);
  Color get secondaryTextColor => const Color(0xff666666);
  Color get placeTextColor => const Color(0xffC3C3C3);
  Color get lightTextColor => const Color(0xff666666);
  Color get secondaryContrastColor => const Color(0xffD2FC8C);
  Color get buttonTextColor => const Color(0xffFFFFFF);
  Color get socialButtonColor => const Color(0xffEFEFEF);
  Color get inputFieldFillColor => const Color(0xffFFFFFF);
  Color get inputFieldBorderrUnfocusColor => const Color(0xffE8E6E6);
  Color get otpFieldUnfocusColor => const Color(0xffEFEFEF);
}

/// Text Styles (unchanged)
class TextStyles {
  TextStyle get textStylePoppinsRegular =>
      const TextStyle(fontFamily: "Poppins-Regular");
  TextStyle get textStylePoppinsMedium =>
      const TextStyle(fontFamily: "Poppins-Medium");
  TextStyle get textStylePoppinsSemiBold =>
      const TextStyle(fontFamily: "Poppins-SemiBold");
  TextStyle get textStylePoppinsrBold =>
      const TextStyle(fontFamily: "Poppins-Light");
}

/// Global getters
AppColors get appTheme => ThemeHelper().themeColor();
TextStyles get textTheme => ThemeHelper().themeText();
