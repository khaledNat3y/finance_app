import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/styling/app_colors.dart';
import '../../../../core/styling/app_styles.dart';
import '../../../../core/styling/spacing.dart';
import '../../../../generated/assets.dart';

class TopProfileNotificationWidget extends StatelessWidget {
  const TopProfileNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30.r,
          backgroundImage: AssetImage(Assets.imagesProfilePicture),
        ),
        horizontalSpace(11),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome back", style: AppStyles.font12GreyMedium,),
            verticalSpace(5),
            Text("Khaled Natey", style: AppStyles.font18accentColorBSemiBoldOld,)
          ],
        ),
        const Spacer(),
        Container(
          width: 48.w,
          height: 48.h,
          padding: EdgeInsets.all(12.r),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.lighterGrey, width: 1.w),
          ),
          child: SvgPicture.asset(Assets.svgsNotificationIcon),
        ),
      ],
    );
  }
}
