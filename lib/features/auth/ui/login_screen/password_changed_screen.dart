import 'package:finance_app/core/routing/routes.dart';
import 'package:finance_app/core/styling/spacing.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/features/auth/widgets/custom_text_stamp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../generated/assets.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.svgsSuccessMark),
            verticalSpace(35),
            CustomTextStamp(title: "Password Changed!", subTitle: "Your password has been changed\nsuccessfully."),
            verticalSpace(40),
            PrimaryButtonWidget(buttonText: "Back to Login", onPress: (){
              GoRouter.of(context).pushReplacementNamed(Routes.loginScreen);
            }),
          ],
        ),
      ),
    );
  }
}
