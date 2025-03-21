import 'package:finance_app/core/widgets/custom_back_button.dart';
import 'package:finance_app/core/widgets/custom_text_field.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/features/auth/widgets/custom_text_stamp.dart';
import 'package:finance_app/features/auth/widgets/dont_or_have_account.dart';
import 'package:finance_app/features/auth/widgets/login_register_methods_displayed_in_row.dart';
import 'package:finance_app/features/auth/widgets/or_login_register_with.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/styling/spacing.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late GlobalKey<FormState> formKey;

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    formKey = GlobalKey<FormState>();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 26.h),
        // Reduced vertical padding
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(12),
                const CustomBackButton(),
                verticalSpace(24),
                CustomTextStamp(title: "Hello! Register to get\nstarted"),
                verticalSpace(24),
                CustomTextField(
                  controller: usernameController,
                  hintText: "Username",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username cannot be empty";
                    }
                    return null;
                  },
                ),
                verticalSpace(12),
                CustomTextField(
                  controller: emailController,
                  hintText: "Email",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email cannot be empty";
                    }
                    return null;
                  },
                ),
                verticalSpace(12),
                CustomTextField(
                  controller: passwordController,
                  hintText: "Password",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password cannot be empty";
                    }
                    return null;
                  },
                ),
                verticalSpace(12),
                CustomTextField(
                  hintText: "Confirm Password",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password cannot be empty";
                    }
                    //check if password == confirm password
                    if (passwordController.text != value) {
                      return "Passwords do not match";
                    }
                    return null;
                  },
                ),
                // Spacer(), // Takes available space
                PrimaryButtonWidget(buttonText: "Register", onPress: () {
                  if (formKey.currentState!.validate()) {
                    GoRouter.of(context).pushReplacementNamed(Routes.loginScreen);
                  }
                }),
                verticalSpace(24), // Reduced space
                OrLoginRegisterWith(title: "Or register with"),
                verticalSpace(18), // Reduced space
                LoginRegisterMethodsDisplayedInRow(),
                verticalSpace(54),
                CustomRichText(
                  title: "Already have an account? ",
                  subTitle: "Login Now",
                  onPressed: () {
                    GoRouter.of(context).pushNamed(Routes.loginScreen);
                  },
                ),
                verticalSpace(24), // Add bottom spacing for safety
              ],
            ),
          ),
        ),
      ),
    );
  }
}
