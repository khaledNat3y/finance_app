import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styling/app_colors.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final void Function()? onPress;
  final Color? textColor;
  final double? width;
  final double? height;
  final double? bordersRadius;
  final double? fontSize;
  final EdgeInsetsGeometry? padding;

  const PrimaryButtonWidget({
    super.key,
    required this.buttonText,
    required this.onPress,
    this.textColor,
    this.width,
    this.height,
    this.bordersRadius,
    this.buttonColor, this.fontSize, this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor ?? AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bordersRadius ?? 8.r),
        ),
        padding: padding,
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
      ),
      child: Text(
        buttonText ?? "",
        style: TextStyle(color: textColor ?? Colors.white, fontSize: fontSize ?? 16.sp),
      ),
    );
  }
}
