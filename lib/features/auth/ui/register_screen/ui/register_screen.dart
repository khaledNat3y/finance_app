import 'package:finance_app/core/widgets/custom_back_button.dart';
import 'package:finance_app/core/widgets/custom_text_field.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/features/auth/widgets/dont_or_have_account.dart';
import 'package:finance_app/features/auth/widgets/login_register_methods_displayed_in_row.dart';
import 'package:finance_app/features/auth/widgets/or_login_register_with.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/styling/app_styles.dart';
import '../../../../../core/styling/spacing.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 24.h), // Reduced vertical padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(12.h),
            const CustomBackButton(),
            verticalSpace(24.h), // Reduced space
            Text(
              "Hello! Register to get\nstarted",
              style: AppStyles.font30PrimaryColorBold,
            ),
            verticalSpace(24.h), // Reduced space
            const CustomTextField(hintText: "Username"),
            verticalSpace(12.h),
            const CustomTextField(hintText: "Email"),
            verticalSpace(12.h),
            const CustomTextField(hintText: "Password"),
            verticalSpace(12.h),
            const CustomTextField(hintText: "Confirm Password"),
            const Spacer(), // Takes available space
            PrimaryButtonWidget(
              buttonText: "Register",
              onPress: () {},
            ),
            verticalSpace(24.h), // Reduced space
            const OrLoginRegisterWith(title: "Or register with"),
            verticalSpace(18.h), // Reduced space
            LoginRegisterMethodsDisplayedInRow(),
            Spacer(), // Add another spacer to balance the layout
            DontOrHaveAccount(
              title: "Already have an account? ",
              subTitle: "Login Now",
              onPressed: () {
                GoRouter.of(context).pushNamed(Routes.loginScreen);
              },
            ),
            verticalSpace(24.h), // Add bottom spacing for safety
          ],
        ),
      ),
    );
  }
}