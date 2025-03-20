import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/styling/app_colors.dart';


class LoginMethodWidget extends StatelessWidget {
  final String iconImagePath;
  final void Function() onPress;
  const LoginMethodWidget({super.key, required this.iconImagePath, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: 105.w,
        height: 56.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.lighterGrey, width: 1.w),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(child: SvgPicture.asset(iconImagePath, width: 23.64.w, height: 23.64.h,)),
      ),
    );
  }
}
