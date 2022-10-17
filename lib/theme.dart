import 'package:flutter/material.dart';
import 'package:hive_mind/constants.dart';

final appThemeData = ThemeData(
  fontFamily: 'tech',
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.medium,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.s),
      ),
      elevation: 0,
    ),
  ),
);
