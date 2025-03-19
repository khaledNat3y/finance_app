import 'package:flutter/material.dart';

import '../../../core/styling/app_styles.dart';
import '../../../core/styling/spacing.dart';

class CustomTextStamp extends StatelessWidget {
  final String title;
  final String? subTitle;

  const CustomTextStamp({
    super.key,
    required this.title,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.font30PrimaryColorBold, softWrap: true, maxLines: 2,),
        verticalSpace(subTitle == null ? 0 : 10),
        FittedBox(
          child: Text(
            subTitle ?? "",
            style: AppStyles.font16GreyMedium,
            softWrap: true,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
