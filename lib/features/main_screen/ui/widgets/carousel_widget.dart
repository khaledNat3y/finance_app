import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/spacing.dart';
import 'package:finance_app/features/main_screen/ui/widgets/card_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarouselWidget extends StatefulWidget {
  const CustomCarouselWidget({super.key});

  @override
  State<CustomCarouselWidget> createState() => _CustomCarouselWidgetState();
}

class _CustomCarouselWidgetState extends State<CustomCarouselWidget> {
  int currentIndexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 263.h,
            viewportFraction: 0.7,
            padEnds: false,
            enlargeCenterPage: true,
            enlargeFactor: 0.05,
            enableInfiniteScroll: false,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndexPage = index;
              });
            },
          ),
          items: [
            CardItemWidget(title: "X-Card", balance: 23000),
            CardItemWidget(title: "X-Card", balance: 23000),
            CardItemWidget(title: "X-Card", balance: 23000),
          ],
        ),
        verticalSpace(16),
        DotsIndicator(
          dotsCount: 3,
          position: currentIndexPage.toDouble(),
          animationDuration: Duration(seconds: 1),
          decorator: DotsDecorator(
            spacing: EdgeInsets.symmetric(horizontal: 4.w),
            color: AppColors.lighterGrey,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
