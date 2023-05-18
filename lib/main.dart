import 'package:flutter/material.dart';
import 'package:habit_tracker/core/utils/app_string.dart';
import 'package:habit_tracker/core/utils/navigator_key.dart';
import 'package:habit_tracker/core/utils/route_generator.dart';
import 'package:habit_tracker/screens/splash/screen_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigatorKey.navigatorKey,
      title: AppString.textHabitTracker,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const ScreenSplash(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
