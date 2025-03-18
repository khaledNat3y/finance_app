import 'package:finance_app/core/routing/routes.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/styling/spacing.dart';
import 'package:finance_app/core/widgets/custom_back_button.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/features/auth/widgets/dont_or_have_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/custom_text_field.dart';
import '../../widgets/or_login_register_with.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 26.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(12),
            CustomBackButton(),
            verticalSpace(24),
            Text("Forgot Password?", style: AppStyles.font30PrimaryColorBold,),
            verticalSpace(10),
            Text("Don't worry! It occurs. Please enter the email address linked with your account.", style: AppStyles.font16GreyMedium,),
            verticalSpace(32),
            CustomTextField(hintText: "Email"),
            verticalSpace(38),
            PrimaryButtonWidget(buttonText: "Send Code", onPress: (){
              GoRouter.of(context).pushReplacementNamed(Routes.passwordChangedScreen);
            }),
            Spacer(),
            DontOrHaveAccount(title: "Remember Password? ", subTitle: "Login", onPressed: (){
              GoRouter.of(context).pushNamed(Routes.loginScreen);
            },)
          ],
        ),
      ),
    );
  }
}
