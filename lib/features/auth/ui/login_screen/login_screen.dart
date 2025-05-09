import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/styling/spacing.dart';
import 'package:finance_app/core/widgets/custom_text_field.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/features/auth/widgets/login_register_methods_displayed_in_row.dart';
import 'package:finance_app/features/auth/widgets/or_login_register_with.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/styling/app_colors.dart';
import '../../../../core/widgets/custom_back_button.dart';
import '../../widgets/dont_or_have_account.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late GlobalKey<FormState> formKey;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    formKey = GlobalKey<FormState>();
  }

  // @override
  // void dispose() {
  //   emailController.dispose();
  //   passwordController.dispose();
  //   formKey.currentState!.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 50.h),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(12),
                CustomBackButton(),
                verticalSpace(28),
                Text(
                  "Welcome back!\nAgain!",
                  style: AppStyles.font30PrimaryColorBold,
                  softWrap: true,
                  maxLines: 2,
                ),
                verticalSpace(32),
                CustomTextField(
                  hintText: "Enter your email",
                  inputType: TextInputType.emailAddress,
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email cannot be empty";
                    }
                    return null;
                  },
                ),
                verticalSpace(15),
                CustomTextField(
                  hintText: "Enter your password",
                  obscureText: obscureText,
                  suffixIcon: IconButton(
                    icon: Icon(obscureText ? Icons.visibility_off : Icons.remove_red_eye,color: AppColors.darkGrey,
                      size: 20.sp,),
                    onPressed: (){
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },

                  ),
                  controller: passwordController,
                  validator: (value){
                    if(value!.isEmpty){
                      return "Password cannot be empty";
                    }else if(value.length<8){
                      return "Password must be at least 8 characters";
                    }
                    return null;
                  },
                ),
                verticalSpace(15),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: (){
                      GoRouter.of(context).pushReplacementNamed(Routes.forgetPasswordScreen);
                    },
                    child: Text(
                      "Forgot Password?",
                      style: AppStyles.font14GreySemiBold,
                    ),
                  ),
                ),
                verticalSpace(30),
                PrimaryButtonWidget(buttonText: "Login", onPress: () {
                  if(formKey.currentState!.validate()) {
                    print("email: ${emailController.text}");
                    print("password: ${passwordController.text}");
                    GoRouter.of(context).pushNamed(Routes.verifyOtpScreen);
                  }
                }),
                verticalSpace(35),
                /// or login with
                OrLoginRegisterWith(title: "Or Login with",),
                verticalSpace(22),
                LoginRegisterMethodsDisplayedInRow(),
                verticalSpace(90),
                CustomRichText(title: "Don't have an account? ", subTitle: "Register", onPressed: (){
                  GoRouter.of(context).pushNamed(Routes.registerScreen);
                },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


