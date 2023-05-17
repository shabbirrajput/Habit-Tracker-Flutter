import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habit_tracker/core/app_color.dart';

/// > AppFont is a class that contains a static method that returns a font family name
class AppFont {
  static final regular = GoogleFonts.nunito(
      fontWeight: FontWeight.w400, color: AppColors.colorBlack);
  static final bold = GoogleFonts.nunito(
      fontWeight: FontWeight.w700, color: AppColors.colorBlack);
  static final semiBold = GoogleFonts.nunito(
      fontWeight: FontWeight.w600, color: AppColors.colorBlack);
  static final mediumBold = GoogleFonts.nunito(
      fontWeight: FontWeight.w500, color: AppColors.colorBlack);

  ///-------REGULAR-------------
  ///colorGray4
  static final colorRed = regular.copyWith(color: AppColors.colorRed);
  static final colorGreen = regular.copyWith(color: AppColors.colorGreen);
  static final regularBlack = regular.copyWith(color: AppColors.colorBlack);

  ///colorWhite-------
  static final colorWhite = bold.copyWith(color: AppColors.colorWhite);
  static final colorBlack = bold.copyWith(color: AppColors.colorBlack);

  ///-------BOLD-------------
  ///colorBlack-------
  static final boldBlack = bold.copyWith(color: AppColors.colorBlack);

  ///boldBlack54-------
  static final boldBlack54 = bold.copyWith(color: AppColors.colorBlack54);

  ///colorBlack-------
  static final mediumBoldBlack =
      mediumBold.copyWith(color: AppColors.colorBlack);

  ///-------MEDIUM BOLD-------------
  ///mediumBoldWhite-------
  static final mediumBoldWhite =
      mediumBold.copyWith(color: AppColors.colorWhite);

  ///-------SEMI BOLD-------------
  ///semiBoldBlack1-------
  static final semiBoldBlack1 = semiBold.copyWith(color: AppColors.colorBlack1);
}
