
import 'package:finance_app/core/styling/app_fonts.dart';
import 'package:finance_app/core/styling/font_weights.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

abstract class AppStyles {
  static TextStyle primaryHeadLinesStyle = TextStyle(
    fontSize: 30.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor
  );

  static TextStyle subtitlesStyle = TextStyle(
    fontSize: 16.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.grey,
  );

  static TextStyle font16BlackSemiBold = TextStyle(
    fontSize: 16.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.black,
  );

  static TextStyle font12GreyMedium = TextStyle(
    fontSize: 12.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.greyWithOpacity,
  );



  static TextStyle font15BlackMedium = TextStyle(
    fontSize: 15.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.black,
  );

  static  TextStyle font15AccentColorBold = TextStyle(
    fontSize: 15.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.accentColor,
  );
  static TextStyle font30PrimaryColorBold = TextStyle(
    fontSize: 30.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primaryColor,
  );
  static TextStyle font14GreySemiBold = TextStyle(
    fontSize: 14.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.grey,
  );
  static TextStyle font15PrimaryColorMedium = TextStyle(
    fontSize: 15.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.primaryColor,
  );

  static TextStyle font16GreyMedium = TextStyle(
    fontSize: 16.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.grey,
  );

  static TextStyle font15GreyMedium = TextStyle(
    fontSize: 15.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.grey,
  );
  static TextStyle font22PrimaryColorBold = TextStyle(
    fontSize: 22.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primaryColor,
  );

  static TextStyle font18accentColorBSemiBoldOld = TextStyle(
    fontSize: 18.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.accentColor,
  );

  static TextStyle font12AccentColorMedium = TextStyle(
    fontSize: 12.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.accentColor,
  );
  static TextStyle font12WhiteBold = TextStyle(
    fontSize: 12.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.white,
  );
  static TextStyle font14GreyMedium = TextStyle(
    fontSize: 14.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeightHelper.bold,
    color: Color(0xffFDFDFD),
  );
  static TextStyle font24WhiteSemiBold = TextStyle(
    fontSize: 24.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.white,
  );
  static TextStyle font18BlackBold = TextStyle(
    fontSize: 18.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.black,
  );
  static TextStyle font12WhiteMedium = TextStyle(
    fontSize: 12.sp,
    fontFamily: AppFonts.mainFontFamily,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.white,
  );

}