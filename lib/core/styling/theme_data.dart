import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';

import 'app_fonts.dart';

abstract class AppThemeData {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.primaryColor,
    fontFamily: AppFonts.mainFontFamily,
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      disabledColor: AppColors.grey,

    )
  );


  static final darkTheme = ThemeData();
}