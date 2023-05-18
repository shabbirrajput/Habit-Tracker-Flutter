import 'package:habit_tracker/core/app_string.dart';

List<String> months = [
  AppString.textNothing,
  AppString.textJanuary,
  AppString.textFebruary,
  AppString.textMarch,
  AppString.textApril,
  AppString.textMay,
  AppString.textJune,
  AppString.textJuly,
  AppString.textAugust,
  AppString.textSeptember,
  AppString.textOctober,
  AppString.textNovember,
  AppString.textDecember,
];

enum Themes { device, light, dark }

enum DayType { clear, check, fail, skip }
