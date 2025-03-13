import 'package:flutter/material.dart';
import 'package:syncro/views/auth/login/login_screen.dart';

import 'core/const/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.bgColor,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: AppColors.primaryTextColor),
          backgroundColor: AppColors.bgColor,
        )
      ),
      home: LoginScreen() ,
    );
  }
}

