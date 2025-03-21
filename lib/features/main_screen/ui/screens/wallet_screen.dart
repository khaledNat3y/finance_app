import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/spacing.dart';
import 'package:finance_app/features/main_screen/ui/widgets/card_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../generated/assets.dart';
import '../widgets/carousel_widget.dart';
import '../widgets/custom_app_bar_tools.dart';
import '../widgets/top_profile_notification_widget.dart';
import '../widgets/user_info_edit_field.dart';

class WalletScreen extends StatelessWidget {
  final ValueChanged<int> onIconClickedToBack;

  const WalletScreen({super.key, required this.onIconClickedToBack});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.r, vertical: 16.h),
      child: Column(
        children: [
          verticalSpace(19),
          CustomAppBarTools(
            title: "All Cards",
            onIconClickedToBack: (index) {
              onIconClickedToBack(index);
            },
            icon: FontAwesomeIcons.ellipsis,
            iconColor: AppColors.black,
          ),
          verticalSpace(24),
          CardItemWidget(title: "X-Card", balance: 23400, width: double.infinity),
          verticalSpace(16),
          CardItemWidget(title: "X-Card", balance: 23400, width: double.infinity, cardColor: AppColors.accentColor,)
        ],
      ),
    );
  }
}
