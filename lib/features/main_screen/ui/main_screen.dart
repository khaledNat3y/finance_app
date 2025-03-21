import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/features/main_screen/ui/screens/home_screen.dart';
import 'package:finance_app/features/main_screen/ui/screens/profile_screen.dart';
import 'package:finance_app/features/main_screen/ui/screens/statistic_screen.dart';
import 'package:finance_app/features/main_screen/ui/screens/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/styling/app_colors.dart';
import '../../../generated/assets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      HomeScreen(),
      StatisticScreen(onIconClickedToBack: (index) {
        setState(() {
          currentIndex = index;
        });
      },),
      Container(child: Text("Add"),),
      WalletScreen(onIconClickedToBack: (index) {
        setState(() {
          currentIndex = index;
        });
      },),
      ProfileScreen(onIconClickedToBack: (index) {
        setState(() {
          currentIndex = index;
        });
      },),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.white,
        fixedColor: AppColors.accentColor,
        selectedLabelStyle: AppStyles.font12AccentColorMedium,
        unselectedItemColor: AppColors.greyWithOpacity,
        unselectedLabelStyle: AppStyles.font12GreyMedium,
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset(Assets.inactiveHomeInactive), activeIcon: SvgPicture.asset(Assets.activeHomeActive),label: "Home",),
          BottomNavigationBarItem(icon: SvgPicture.asset(Assets.inactiveStatisticInactive),activeIcon: SvgPicture.asset(Assets.activeStatisticActive), label: "Statistic"),
          BottomNavigationBarItem(icon: Container(
            width: 48.w,
            height: 48.h,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primaryColor,
            ),
            child: Container(
              width: 20.w,
              height: 20.h,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Icon(Icons.add, color: AppColors.primaryColor,),
            ),
          ),label: ""),
          BottomNavigationBarItem(icon: SvgPicture.asset(Assets.inactiveWalletInactive), activeIcon: SvgPicture.asset(Assets.activeWalletActive), label: "My card"),
          BottomNavigationBarItem(icon: SvgPicture.asset(Assets.inactiveProfileInactive), activeIcon: SvgPicture.asset(Assets.activeProfileActive), label: "Profile"),
        ],
      ),
      body: SafeArea(child: screens[currentIndex]),
    );
  }
}
