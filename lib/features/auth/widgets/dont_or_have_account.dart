import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../core/styling/app_colors.dart';
import '../../../core/styling/app_styles.dart';

class DontOrHaveAccount extends StatelessWidget {
  final String title;
  final String subTitle;
  final void Function()? onPressed;
  const DontOrHaveAccount({super.key, required this.title, required this.subTitle, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text.rich(
        TextSpan(
          text: title,
          style: AppStyles.font15PrimaryColorMedium,
          children: [
            TextSpan(
              text: subTitle,
              recognizer: TapGestureRecognizer()..onTap = onPressed,
              style: AppStyles.font15AccentColorBold.copyWith(
                decorationColor: AppColors.accentColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
