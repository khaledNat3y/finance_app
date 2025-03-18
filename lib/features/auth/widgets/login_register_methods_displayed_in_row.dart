import 'package:flutter/material.dart';

import '../../../core/styling/spacing.dart';
import '../../../generated/assets.dart';
import '../ui/login_screen/widgets/login_method_widget.dart';

class LoginRegisterMethodsDisplayedInRow extends StatelessWidget {
  const LoginRegisterMethodsDisplayedInRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LoginMethodWidget(iconImagePath: Assets.svgsFacebookIcon, onPress: (){},),
        horizontalSpace(8),
        LoginMethodWidget(iconImagePath: Assets.svgsGoogleIc, onPress: (){},),
        horizontalSpace(8),
        LoginMethodWidget(iconImagePath: Assets.svgsAppleIcon, onPress: (){},),
      ],
    );
  }
}
