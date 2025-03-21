import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/styling/app_colors.dart';
import '../../../../core/styling/spacing.dart';
import '../../../../generated/assets.dart';
import '../widgets/custom_app_bar_tools.dart';
import '../widgets/user_info_edit_field.dart';

class ProfileScreen extends StatelessWidget {
  final ValueChanged<int> onIconClickedToBack;
  const ProfileScreen({super.key, required this.onIconClickedToBack});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.r, vertical: 19.h),
      child: Form(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomAppBarTools(title: "My Profile", onIconClickedToBack: (index) {
                onIconClickedToBack(index);
              }, icon: FontAwesomeIcons.penToSquare,),
              verticalSpace(39),
              CircleAvatar(
                radius: 60.r,
                backgroundImage: AssetImage(Assets.imagesProfilePicture),
              ),
              verticalSpace(9),
              UserInfoEditField(
                text: "Name",
                child: TextFormField(
                  initialValue: "Khaled Natey",
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.primaryColor.withValues(alpha: 0.05),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0 * 1.5,
                      vertical: 16.0,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                ),
              ),
              UserInfoEditField(
                text: "Email",
                child: TextFormField(
                  initialValue: "Khalednatey85@gmail.com",
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.primaryColor.withValues(alpha: 0.05),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0 * 1.5,
                      vertical: 16.0,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                ),
              ),
              UserInfoEditField(
                text: "Phone",
                child: TextFormField(
                  initialValue: "01115590783",
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.primaryColor.withValues(alpha: 0.05),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0 * 1.5,
                      vertical: 16.0,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                ),
              ),
              UserInfoEditField(
                text: "Address",
                child: TextFormField(
                  initialValue: "Cairo,Egypt",
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.primaryColor.withValues(alpha: 0.05),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0 * 1.5,
                      vertical: 16.0,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                ),
              ),
              UserInfoEditField(
                text: "Old Password",
                child: TextFormField(
                  obscureText: true,
                  initialValue: "demopass",
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.visibility_off, size: 20),
                    filled: true,
                    fillColor: AppColors.primaryColor.withValues(alpha: 0.05),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0 * 1.5,
                      vertical: 16.0,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                ),
              ),
              UserInfoEditField(
                text: "New Password",
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "New Password",
                    filled: true,
                    fillColor: AppColors.primaryColor.withValues(alpha: 0.05),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0 * 1.5,
                      vertical: 16.0,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
