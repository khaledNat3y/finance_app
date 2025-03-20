import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styling/app_colors.dart';
import '../../../core/styling/app_styles.dart';
class OrLoginRegisterWith extends StatelessWidget {
  final String title;
  const OrLoginRegisterWith({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: AppColors.lighterGrey, thickness: 1.w,)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(title, style: AppStyles.font14GreySemiBold,),
        ),
        Expanded(child: Divider(color: AppColors.lighterGrey, thickness: 1.w,)),
      ],
    );
  }
}
