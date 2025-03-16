import 'dart:ui';

import 'package:finance_app/core/styling/app_fonts.dart';
import 'package:finance_app/core/styling/font_weights.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppStyles {
  static TextStyle primaryHeadLinesStyle = TextStyle(
    fontSize: 30.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor
  );

  static TextStyle subtitlesStyle = TextStyle(
    fontSize: 16.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeights.regular,
    color: AppColors.secondaryColor,
  );

  static TextStyle font16BlackSemiBold = TextStyle(
    fontSize: 16.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeights.semiBold,
    color: AppColors.black,
  );

  static TextStyle font12GreyMedium = TextStyle(
    fontSize: 16.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeights.semiBold,
    color: AppColors.black,
  );

  static TextStyle font15Medium = TextStyle(
    fontSize: 16.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeights.semiBold,
    color: AppColors.black,
  );

}