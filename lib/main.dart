import 'package:finance_app/core/routing/app_router.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/spacing.dart';
import 'package:finance_app/core/styling/theme_data.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/primary_outlined_button_widget.dart';
import 'package:finance_app/features/on_boarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'finance_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: AppThemeData.lightTheme,
          routerConfig: AppRouter.goRouter,
        );
      },
    );
  }
}

