import 'package:finance_app/features/main_screen/ui/widgets/custom_app_bar_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/styling/app_colors.dart';
import '../../../../core/styling/app_styles.dart';
import '../../../../core/styling/spacing.dart';
import '../../../../generated/assets.dart';

class StatisticScreen extends StatelessWidget {
  final ValueChanged<int> onIconClickedToBack;

  const StatisticScreen({super.key, required this.onIconClickedToBack});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.r, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBarTools(
            title: "Reload",
            onIconClickedToBack: (index) {
              onIconClickedToBack(index);
            },
            icon: FontAwesomeIcons.ellipsis,
          ),
          verticalSpace(24),
          Image.asset(
            Assets.imagesCharts,
            width: double.infinity,
            height: 300.h,
          ),
          verticalSpace(16),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.w,
                mainAxisSpacing: 16.h,
              ),
              children: [
                InOutComesWidget(
                  inOutTitle: "Incomes",
                  inOutBalance: 15000,
                ),
                InOutComesWidget(
                  inOutTitle: "Outcomes",
                  inOutBalance: 35000,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InOutComesWidget extends StatelessWidget {
  final String inOutTitle;
  final double inOutBalance;

  const InOutComesWidget({
    super.key,
    required this.inOutTitle,
    required this.inOutBalance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156.w,
      height: 142.h,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lighterGrey, width: 1.w),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 16.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // Prevents overflow by allowing the column to take only necessary space
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 48.w,
              height: 48.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: AppColors.lightGrey,
              ),
              child: Icon(
                inOutTitle == "Incomes" ? FontAwesomeIcons.download : FontAwesomeIcons.upload,
                size: 20.sp,
                color: AppColors.primaryColor,
              ),
            ),
            verticalSpace(12),
            Flexible(
              // Prevents text overflow
              child: Text(
                "$inOutBalance EG",
                style: AppStyles.font16BlackSemiBold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            verticalSpace(4),
            Flexible(
              // Prevents text overflow
              child: Text(
                inOutTitle,
                style: AppStyles.font14GreyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
