import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styling/app_styles.dart';
import '../../../../generated/assets.dart';

class CardItemWidget extends StatelessWidget {
  final String title;
  final double balance;
  const CardItemWidget({super.key, required this.title, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 207.w,
          height: 263.h,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            Assets.imagesLayer2,
            width: 120.w,
            height: 130.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            Assets.imagesLayer1,
            width: 120.w,
            height: 130.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            Assets.imagesLayer2,
            width: 207.w,
            height: 200.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            Assets.imagesLayer1,
            width: 207.w,
            height: 200.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 24.w,
          top: 24.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppStyles.font12WhiteBold),
              verticalSpace(57),
              Text("Balance", style: AppStyles.font14GreyMedium),
              verticalSpace(10),
              Text("$balance EG", style: AppStyles.font24WhiteSemiBold),
              verticalSpace(57),
            ],
          ),
        ),
        Positioned(
          bottom: 26.h,
          right: 24.w,
          child: Text("12/24", style: AppStyles.font12WhiteMedium),
        ),
        Positioned(
          bottom: 26.h,
          left: 24.w,
          child: Text("****  3434", style: AppStyles.font16GreyMedium),
        ),
      ],
    );
  }
}
