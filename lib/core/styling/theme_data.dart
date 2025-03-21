import 'package:finance_app/core/styling/app_colors.dart';
import 'package:flutter/material.dart';

import 'app_fonts.dart';

abstract class AppThemeData {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.primaryColor,
    fontFamily: AppFonts.mainFontFamily,
    textSelectionTheme:TextSelectionThemeData(
      cursorColor: AppColors.primaryColor, // Change cursor color
      selectionColor: AppColors.primaryColor.withValues(alpha: 0.5), // Change selection highlight color
      selectionHandleColor: AppColors.primaryColor, // Change the color of selection handles (balls)
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor, brightness: Brightness.light),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      disabledColor: AppColors.grey,
    )
  );


  static final darkTheme = ThemeData();
}