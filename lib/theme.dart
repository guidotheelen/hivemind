import 'package:flutter/material.dart';
import 'package:hive_mind/constants.dart';

final appThemeData = ThemeData(
  fontFamily: 'tech',
  primaryColor: AppColors.light,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.medium,
      shape: const ContinuousRectangleBorder(),
    ),
  ),
);
