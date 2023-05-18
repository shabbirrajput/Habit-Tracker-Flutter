import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habit_tracker/core/utils/app_color.dart';
import 'package:habit_tracker/core/utils/app_dimens.dart';
import 'package:habit_tracker/core/utils/app_image.dart';
import 'package:habit_tracker/core/utils/app_string.dart';
import 'package:habit_tracker/screens/settings/settings_manager.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:provider/provider.dart';

class ScreenOnBoarding extends StatelessWidget {
  ScreenOnBoarding({Key? key}) : super(key: key);

  final List<PageViewModel> listPageViewModel = [
    PageViewModel(
      titleWidget: const Text(
        AppString.textDefineYourHabits,
        style:
            TextStyle(fontSize: Dimens.textSize24, fontWeight: FontWeight.bold),
      ),
      image: SvgPicture.asset(
        AppImage.appOnboard1,
        semanticsLabel: AppString.textEmptyList,
        width: Dimens.margin250,
      ),
      bodyWidget: const Center(
        child: Padding(
          padding: EdgeInsets.all(Dimens.margin16),
          child: Column(
            children: [
              Text(
                AppString.textToBetterStickToYourHabitsYouCanDefine,
                style: TextStyle(fontSize: Dimens.textSize18),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: Dimens.margin20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppString.textCue,
                    style: TextStyle(fontSize: Dimens.textSize18),
                  ),
                  SizedBox(
                    height: Dimens.margin5,
                  ),
                  Text(
                    AppString.textRoutine,
                    style: TextStyle(fontSize: Dimens.textSize18),
                  ),
                  SizedBox(
                    height: Dimens.margin5,
                  ),
                  Text(
                    AppString.textReward,
                    style: TextStyle(fontSize: Dimens.textSize18),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    PageViewModel(
      titleWidget: const Text(
        AppString.textLogYourDays,
        style:
            TextStyle(fontSize: Dimens.textSize24, fontWeight: FontWeight.bold),
      ),
      image: SvgPicture.asset(
        AppImage.appOnboard2,
        semanticsLabel: AppString.textEmptyList,
        width: Dimens.margin250,
      ),
      bodyWidget: const Center(
        child: Padding(
          padding: EdgeInsets.all(Dimens.margin16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.check,
                    color: AppColors.colorRed,
                  ),
                  SizedBox(
                    width: Dimens.margin10,
                  ),
                  Text(
                    AppString.textNotSoSuccessful,
                    style: TextStyle(fontSize: Dimens.textSize18),
                  ),
                ],
              ),
              SizedBox(
                height: Dimens.margin20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.last_page,
                    color: AppColors.colorSkip,
                  ),
                  SizedBox(
                    width: Dimens.margin10,
                  ),
                  Text(
                    AppString.textSkipDoesNotAffectStreaks,
                    style: TextStyle(fontSize: Dimens.textSize18),
                  )
                ],
              ),
              SizedBox(
                height: Dimens.margin20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.chat_bubble_outline,
                    color: AppColors.colorOrange,
                  ),
                  SizedBox(
                    width: Dimens.margin10,
                  ),
                  Text(
                    AppString.textComment,
                    style: TextStyle(fontSize: Dimens.textSize18),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
    PageViewModel(
      title: 'Observe your progress',
      image: SvgPicture.asset(
        AppImage.appOnboard3,
        semanticsLabel: AppString.textEmptyList,
        width: Dimens.margin250,
      ),
      bodyWidget: const Center(
        child: Padding(
          padding: EdgeInsets.all(Dimens.margin16),
          child: Text(
            AppString
                .textYouCanTrackYourProgressThroughTheCalendarViewInEveryHabitOrOnTheStatisticsPage,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: Dimens.textSize18),
          ),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: listPageViewModel,
      done: const Text(
        AppString.textDone,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      onDone: () {
        if (Provider.of<SettingsManager>(context, listen: false)
            .getseenOnBoarding) {
          Navigator.pop(context);
        } else {
          Provider.of<SettingsManager>(context, listen: false)
              .setseenOnBoarding = true;
        }
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text(AppString.textSkip),
    );
  }
}
