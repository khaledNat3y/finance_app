import 'package:finance_app/core/styling/spacing.dart';
import 'package:finance_app/core/widgets/custom_back_button.dart';
import 'package:finance_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styling/app_styles.dart';
import '../../../../core/widgets/primary_button_widget.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

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
            verticalSpace(28),
            Text("Create New Password", style: AppStyles.font30PrimaryColorBold,),
            verticalSpace(10),
            Text("Your new password must be unique from those previously used.", style: AppStyles.font16GreyMedium,),
            verticalSpace(32),
            CustomTextField(hintText: "New Password"),
            verticalSpace(12),
            CustomTextField(hintText: "Confirm Password"),
            verticalSpace(38),
            PrimaryButtonWidget(buttonText: "Reset Password", onPress: (){},),
          ],
        ),
      ),
    );
  }
}
