import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_styles.dart';

abstract class AppTheme {
  static const fontFamily = 'Lufga';

  // BUTTON STYLES
  static final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: kRed,
    textStyle: buttonTextStyle,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
    minimumSize: const Size(double.maxFinite, 50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );

  static final ButtonStyle textButtonStyle = TextButton.styleFrom(
    backgroundColor: kLightRed,
    textStyle: buttonTextStyle,
    foregroundColor: kRed,
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
    minimumSize: const Size(double.maxFinite, 50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );

  static final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
    backgroundColor: Colors.transparent,
    textStyle: buttonTextStyle,
    foregroundColor: kRed,
    side: BorderSide.none,
    minimumSize: const Size(double.maxFinite, 50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );

  static final confirmButtonStyle = TextButton.styleFrom(
    foregroundColor: kRed,
    backgroundColor: Colors.transparent,
    textStyle: labelMediumStyle,
    minimumSize: Size(10, 10),
    padding: EdgeInsets.only(bottom: 20),
  );

  static const OutlineInputBorder whiteOutlineBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(
      color: borderColor,
    ),
  );
  static const OutlineInputBorder errorOutlineBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(
      color: kRed,
    ),
  );

  // FINAL THEME DATA
  static final ThemeData themeData = ThemeData(
    fontFamily: fontFamily,
    scaffoldBackgroundColor: bgColor,
    textTheme: const TextTheme(
      headlineSmall: headlineSmallStyle,
      headlineMedium: headlineMediumStyle,
      titleLarge: titleLargeStyle,
      titleMedium: titleMediumStyle,
      titleSmall: titleSmallStyle,
      bodyLarge: bodyLargeStyle,
      bodyMedium: bodyMediumStyle,
      bodySmall: bodySmallStyle,
      labelMedium: labelMediumStyle,
      labelSmall: labelSmallStyle,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      border: whiteOutlineBorder,
      enabledBorder: whiteOutlineBorder,
      focusedBorder: whiteOutlineBorder,
      errorBorder: errorOutlineBorder,
      focusedErrorBorder: whiteOutlineBorder,
      hintStyle: bodyMediumStyle.copyWith(
        color: textGreyColor,
      ),
      fillColor: Colors.white,
      filled: true,
      suffixIconColor: suffixIconColor,
      prefixIconColor: suffixIconColor,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: kBlue,
      selectionColor: kRed.withValues(alpha: 0.2),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: appBarBgColor,
      titleTextStyle: titleLargeStyle.copyWith(
        color: textWhiteColor,
      ),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: elevatedButtonStyle,
    ),
    textButtonTheme: TextButtonThemeData(
      style: textButtonStyle,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: outlinedButtonStyle,
    ),
  );
}
