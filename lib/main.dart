import 'package:flutter/material.dart';
import 'package:habit_tracker/core/app_string.dart';
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
      title: AppString.textHabitTracker,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const ScreenSplash(),
    );
  }
}
