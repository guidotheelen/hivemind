import 'package:flutter/material.dart';

abstract class Sizes {
  static const double s = 8.0;
  static const double m = 16.0;
  static const double l = 24.0;
  static const double xl = 48.0;
}

abstract class AppColors {
  static const Color dark = Color(0xFF1e3138);
  static const Color medium = Color(0xFF547268);
  static const Color light = Color(0xFFb3c1c2);
  static const Color white = Colors.white;
}

abstract class TextStyles {
  static const TextStyle titleLight = TextStyle(
    fontSize: 30,
    color: AppColors.light,
  );
  static const TextStyle subtitleLight = TextStyle(
    fontSize: 20,
    color: AppColors.light,
  );
  static const TextStyle bodyLight = TextStyle(
    fontSize: 16,
    color: AppColors.light,
  );
  static const TextStyle titleDark = TextStyle(
    fontSize: 30,
    color: AppColors.dark,
  );
  static const TextStyle subtitleDark = TextStyle(
    fontSize: 20,
    color: AppColors.dark,
  );
  static const TextStyle bodyDark = TextStyle(
    fontSize: 16,
    color: AppColors.dark,
  );
}

abstract class AppDecorations {
  static BoxDecoration boxDecoration = BoxDecoration(
    border: Border.all(
      color: AppColors.light,
      width: 1,
      strokeAlign: StrokeAlign.center,
    ),
  );
}
