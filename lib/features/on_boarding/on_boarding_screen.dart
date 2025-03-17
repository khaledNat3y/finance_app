import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/styling/font_weights.dart';
import 'package:finance_app/core/styling/spacing.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/primary_outlined_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/routing/routes.dart';
import '../../generated/assets.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            Assets.imagesOnBoardingImage,
            width: double.infinity,
            height: 570.h,
            fit: BoxFit.fill,
          ),
          verticalSpace(21),
          PrimaryButtonWidget(
            buttonText: "Login",
            onPress: () {
              GoRouter.of(context).pushNamed(Routes.loginScreen);
            },
            width: 331.w,
            height: 56.h,
          ),
          verticalSpace(15),
          PrimaryOutlinedButtonWidget(buttonText: "Register", onPress: () {}),
          verticalSpace(46),
          Text(
            "Continue as a guest",
            style: AppStyles.font15AccentColorBold.copyWith(
              decoration: TextDecoration.underline,
              decorationColor: AppColors.accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
