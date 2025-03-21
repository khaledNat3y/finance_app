import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/styling/app_colors.dart';
import '../../../../core/styling/app_styles.dart';

class CustomAppBarTools extends StatelessWidget {
  final String title;
  final IconData? icon;
  final Color? iconColor;
  final void Function()? onPress;
  final ValueChanged<int>? onIconClickedToBack;
  const CustomAppBarTools({super.key, required this.title, this.onPress, this.onIconClickedToBack, this.icon, this.iconColor});

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.black, width: 1.w),
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, size: 20.sp),
            onPressed: () {
              onIconClickedToBack!(currentIndex);
            },
            color: AppColors.black,
          ),
        ),
        Text(title, style: AppStyles.font18BlackBold),
        Container(
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.black, width: 1.w),
          ),
          child: IconButton(
            onPressed: onPress,
            icon: Icon(icon, size: 20.sp, color: iconColor ?? Color(0xff4F3D56),),
          ),
        ),
      ],
    );
  }
}
