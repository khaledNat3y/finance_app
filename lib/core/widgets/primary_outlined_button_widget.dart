import 'package:finance_app/core/styling/font_weights.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styling/app_colors.dart';

class PrimaryOutlinedButtonWidget extends StatelessWidget {
  final String? buttonText;
  final Color? borderColor;
  final void Function()? onPress;
  final Color? textColor;
  final double? width;
  final double? height;
  final double? bordersRadius;
  final double? fontSize;

  const PrimaryOutlinedButtonWidget({
    super.key,
    required this.buttonText,
    required this.onPress,
    this.textColor,
    this.width,
    this.height,
    this.bordersRadius,
    this.borderColor, this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: OutlinedButton.styleFrom(
          side: BorderSide(color: borderColor ?? AppColors.primaryColor, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bordersRadius ?? 8.r,),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 50.h),
      ),
      child: Text(
        buttonText ?? "",
        style: TextStyle(color: textColor ?? AppColors.primaryColor, fontSize: fontSize ?? 16.sp, fontWeight: FontWeights.bold),
      ),
    );
  }
}
