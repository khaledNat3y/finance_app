import 'package:finance_app/features/main_screen/ui/widgets/carousel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/styling/spacing.dart';
import '../widgets/custom_home_page_item.dart';
import '../widgets/top_profile_notification_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.r, vertical: 19.h),
      child: Column(
        children: [
          verticalSpace(19),
          TopProfileNotificationWidget(),
          verticalSpace(24),
          CustomCarouselWidget(),
          verticalSpace(24),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.h,
                crossAxisSpacing: 16.w,
              ),
              children: [
                CustomHomePageItem(icon: Icons.send, title: "Send money", description: "Take acc to acc",),
                CustomHomePageItem(icon: Icons.wallet, title: "Send money", description: "Take acc to acc",),
                CustomHomePageItem(icon: Icons.groups, title: "Send money", description: "Take acc to acc",),
                CustomHomePageItem(icon: Icons.request_page, title: "Send money", description: "Take acc to acc",),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
