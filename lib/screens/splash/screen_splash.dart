import 'package:flutter/material.dart';
import 'package:habit_tracker/core/app_image.dart';
import 'package:habit_tracker/screens/onboarding/screen_onboarding.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const ScreenOnboarding()),
          (Route<dynamic> route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1],
          colors: [
            Color(0xFFFFFFFF),
/*            Color(0xFFA8A7A7),
            Color(0xFFFFFFFF),*/
          ],
        ),
      ),
      child: Center(
        child: Image.asset(
          AppImage.appIcon,
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
