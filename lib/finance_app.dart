import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'core/styling/spacing.dart';
import 'core/widgets/primary_button_widget.dart';
import 'core/widgets/primary_outlined_button_widget.dart';

class FinanceApp extends StatefulWidget {
  const FinanceApp({super.key});

  @override
  State<FinanceApp> createState() => _FinanceAppState();
}

class _FinanceAppState extends State<FinanceApp> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Finance App"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryButtonWidget(buttonText: "Login", onPress: () {}),
            verticalSpace(15),
            PrimaryOutlinedButtonWidget(buttonText: "Register", onPress: () {}),
            verticalSpace(15),
            CustomTextField(hintText: "Email"),
            CustomTextField(
              hintText: "Email",
              obscureText: obscureText,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                icon:
                    obscureText
                        ? Icon(Icons.visibility_off, color: AppColors.darkGrey)
                        : Icon(
                          Icons.visibility,
                          color: AppColors.darkGrey,
                        ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
