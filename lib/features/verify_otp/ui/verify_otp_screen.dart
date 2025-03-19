import 'package:finance_app/core/routing/routes.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/styling/app_colors.dart';
import '../../../core/styling/spacing.dart';
import '../../../core/widgets/custom_back_button.dart';
import '../../auth/widgets/custom_text_stamp.dart';
import '../../auth/widgets/dont_or_have_account.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  late TextEditingController pinCodeController;

  @override
  void initState() {
    super.initState();
    pinCodeController = TextEditingController();
  }
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
            CustomTextStamp(
              title: "OTP Verification",
              subTitle:
                  "Enter the verification code we just sent on your\nemail address.",
            ),
            verticalSpace(32),
            PinCodeTextField(
              appContext: context,
              length: 4,
              controller: pinCodeController,
              keyboardType: TextInputType.number,
              animationType: AnimationType.fade,
              textStyle: AppStyles.font22PrimaryColorBold,
              enableActiveFill: true,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(8.r),
                borderWidth: 1.w,
                fieldHeight: 60,
                fieldWidth: 70,
                selectedColor: AppColors.primaryColor,
                selectedFillColor: AppColors.white,
                activeColor: AppColors.primaryColor,
                activeFillColor: AppColors.white,
                inactiveColor: AppColors.lightGrey,
                inactiveFillColor: AppColors.lightGrey.withAlpha(1),
              ),
              onChanged: (value) {
                print("pin value: $value");
              },
              onCompleted: (value) {
                print("I finished");
              },
            ),
            verticalSpace(36),
            PrimaryButtonWidget(buttonText: "Verify", onPress: (){
              GoRouter.of(context).pushReplacementNamed(Routes.onBoardingScreen);
            }),
            Spacer(),
            CustomRichText(title: "Didn’t received code? ", subTitle: "Resend", onPressed: (){},)

          ],
        ),
      ),
    );
  }
}

