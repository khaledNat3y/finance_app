import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/font_weights.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final double? width;
  final bool? obscureText;
  final TextInputType? inputType;
  final String? Function(String?)? validator;

  const CustomTextField({super.key, required this.hintText, this.suffixIcon, this.width, this.obscureText, this.inputType, this.validator});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 331.w,
      child: TextFormField(
        cursorColor: AppColors.primaryColor,
        cursorErrorColor: AppColors.errorColor,
        obscureText: obscureText ?? false,
        keyboardType: inputType,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText ?? "",
          hintStyle: TextStyle(
            fontSize: 15.sp,
            color: AppColors.secondaryColor,
            fontWeight: FontWeights.medium,
          ),
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
          enabled: true,
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          errorBorder: buildOutlineInputBorder(color: AppColors.errorColor),
          filled: true,
          fillColor: Color(0xffF7F8F9),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({Color? color}) {
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: color ?? AppColors.lightGrey, width: 1.w),
    );
  }
}
