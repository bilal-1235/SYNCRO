import 'package:flutter/material.dart';
import 'package:syncro/routes/routes.dart';
import 'core/const/app_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.bgColor,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: AppColors.primaryTextColor),
            backgroundColor: AppColors.bgColor,
          )
        ),
          routes: Routes.routes,
          initialRoute: Routes.loginPage
      ),
    );
  }
}

