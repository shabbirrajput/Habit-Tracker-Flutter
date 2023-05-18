import 'package:flutter/material.dart';
import 'package:habit_tracker/core/utils/app_routes.dart';
import 'package:habit_tracker/screens/onboarding/screen_onboarding.dart';
import 'package:habit_tracker/screens/splash/screen_splash.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.routesSplash:
        return MaterialPageRoute(
            builder: (_) => const ScreenSplash(),
            settings: const RouteSettings(name: AppRoutes.routesSplash));
      case AppRoutes.routesOnBoarding:
        return MaterialPageRoute(
            builder: (_) => ScreenOnBoarding(),
            settings: const RouteSettings(name: AppRoutes.routesOnBoarding));
      default:
        return MaterialPageRoute(
            builder: (_) => const ScreenSplash(),
            settings: const RouteSettings(name: AppRoutes.routesSplash));
    }
  }
}
