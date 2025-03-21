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
  final TextEditingController? controller;

  const CustomTextField({super.key, required this.hintText, this.suffixIcon, this.width, this.obscureText, this.inputType, this.validator, this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 331.w,
      child: TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        cursorColor: AppColors.primaryColor,
        cursorErrorColor: AppColors.errorColor,
        obscureText: obscureText ?? false,
        keyboardType: inputType,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText ?? "",
          hintStyle: TextStyle(
            fontSize: 15.sp,
            color: AppColors.grey,
            fontWeight: FontWeightHelper.medium,
          ),
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
          enabled: true,
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          errorBorder: buildOutlineInputBorder(color: AppColors.errorColor),
          focusedErrorBorder: buildOutlineInputBorder(color: AppColors.errorColor),
          filled: true,
          fillColor: Color(0xffF7F8F9),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({Color? color}) {
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: color ?? AppColors.lighterGrey, width: 1.w),
    );
  }
}
