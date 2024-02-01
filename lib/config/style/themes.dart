import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pexel_tok/config/style/colors.dart';
import 'package:pexel_tok/config/style/text_styles.dart';

class AppThemes {
  // Light Theme
  static final light = ThemeData(
    fontFamily: "Inter",
    splashColor: Colors.transparent,
    scaffoldBackgroundColor: AppColors.white,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.mediumWhite,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
    ),
    primaryIconTheme: IconThemeData(
      color: AppColors.mediumBlack,
      size: 25.sp,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: AppFontSize.landingTitle,
        color: AppColors.black,
        letterSpacing: 1.2,
      ),
      titleSmall: TextStyle(
        fontSize: AppFontSize.title,
        color: AppColors.black,
        letterSpacing: 1.2,
      ),
      bodyLarge: TextStyle(
        fontSize: AppFontSize.large,
        color: AppColors.black,
        letterSpacing: 1.2,
      ),
      bodyMedium: TextStyle(
        fontSize: AppFontSize.medium,
        color: AppColors.mediumBlack,
        letterSpacing: 1.2,
      ),
      bodySmall: TextStyle(
        fontSize: AppFontSize.small,
        color: AppColors.lightBlack,
        letterSpacing: 1.2,
      ),
    ),
  );

  // Dark Theme
  static final dark = ThemeData(
    fontFamily: "Inter",
    splashColor: Colors.transparent,
    scaffoldBackgroundColor: AppColors.black,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.mediumBlack,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
    ),
    primaryIconTheme: IconThemeData(
      color: AppColors.mediumWhite,
      size: 25.sp,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: AppFontSize.landingTitle,
        color: AppColors.white,
        letterSpacing: 1.2,
      ),
      titleSmall: TextStyle(
        fontSize: AppFontSize.title,
        color: AppColors.white,
        letterSpacing: 1.2,
      ),
      bodyLarge: TextStyle(
        fontSize: AppFontSize.large,
        color: AppColors.white,
        letterSpacing: 1.2,
      ),
      bodyMedium: TextStyle(
        fontSize: AppFontSize.medium,
        color: AppColors.mediumWhite,
        letterSpacing: 1.2,
      ),
      bodySmall: TextStyle(
        fontSize: AppFontSize.small,
        color: AppColors.lightWhite,
        letterSpacing: 1.2,
      ),
    ),
  );
}
