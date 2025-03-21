import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/styling/app_colors.dart';
import '../../../../core/styling/spacing.dart';
import '../../../../generated/assets.dart';

class CustomHomePageItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  const CustomHomePageItem({super.key, required this.icon, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.lighterGrey),
      ),
      child: Column(
        children: [
          Container(
            width: 48.w,
            height: 48.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: AppColors.lightGrey,
            ),
            child: Icon(icon, size: 20.sp, color: AppColors.primaryColor,),
          ),
          verticalSpace(12),
          Text(title, style: AppStyles.font16BlackSemiBold,),
          verticalSpace(4),
          Text(description, style: AppStyles.font12GreyMedium,)
        ],
      ),
    );
  }
}
