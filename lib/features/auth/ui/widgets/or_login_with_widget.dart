import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styling/app_colors.dart';
import '../../../../core/styling/app_styles.dart';

class OrLoginWithWidget extends StatelessWidget {
  const OrLoginWithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: AppColors.lightGrey, thickness: 1.w,)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text("Or Login with", style: AppStyles.font14GreySemiBold,),
        ),
        Expanded(child: Divider(color: AppColors.lightGrey, thickness: 1.w,)),
      ],
    );
  }
}
