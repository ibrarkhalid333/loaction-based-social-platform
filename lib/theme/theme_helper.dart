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
  Color get screenBackgroundColor => const Color(0xffFFFFFF);
  Color get primaryColor => const Color(0xff007BFF);
  Color get textColor => const Color(0xff1F1F1F);
  Color get lightTextColor => const Color(0xff6D6D6D);
}

/// Text Styles (unchanged)
class TextStyles {
  TextStyle get textStyleInterRegular =>
      const TextStyle(fontFamily: "Inter-Regular");
  TextStyle get textStyleInterMedium =>
      const TextStyle(fontFamily: "Inter-Medium");
  TextStyle get textStyleInterSemiBold =>
      const TextStyle(fontFamily: "Inter-SemiBold");
  TextStyle get textStyleInterBold => const TextStyle(fontFamily: "Inter-Bold");
  TextStyle get textStyleInterExtraBold => const TextStyle(
    fontFamily: "Inter-Extra-Bold",
    fontWeight: FontWeight.w800,
  );
}

/// Global getters
AppColors get appTheme => ThemeHelper().themeColor();
TextStyles get textTheme => ThemeHelper().themeText();
