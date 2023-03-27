import 'package:flutter/material.dart';

@immutable
class AppColors {
  // Primary Colors
  static const primary = Color(0xFFA8715A);
  static const secondary = Color(0xFFA8715A);

  static const success = Color(0xFF65D83C);
  static const successDark = Color(0xFF4A9D2D);
  static const successDarker = Color(0xFF336B1F);
  static const successLight = Color(0xFF8ADA6D);
  static const successLighter = Color(0xFFD8F5CE);
  static const successMain = Color(0xFF65D83C);
  static Color success98 = successMain.withOpacity(0.98);
  static Color success68 = successMain.withOpacity(0.68);
  static Color success52 = successMain.withOpacity(0.52);
  static Color success36 = successMain.withOpacity(0.36);
  static Color success20 = successMain.withOpacity(0.20);
  static Color success8 = successMain.withOpacity(0.8);

  static const warning = Color(0xFFFFC225);
  static const warningDark = Color(0xFFCC9D24);
  static const warningDarker = Color(0xFF8A6A16);
  static const warningLight = Color(0xFFFFD568);
  static const warningLighter = Color(0xFFFCEDC7);
  static const warningMain = Color(0xFFFFC225);
  static Color warning98 = warningMain.withOpacity(0.98);
  static Color warning68 = warningMain.withOpacity(0.68);
  static Color warning52 = warningMain.withOpacity(0.52);
  static Color warning36 = warningMain.withOpacity(0.36);
  static Color warning20 = warningMain.withOpacity(0.20);
  static Color warning8 = warningMain.withOpacity(0.8);

  static const error = Color(0xFFFF4242);
  static const errorDark = Color(0xFFC92F2F);
  static const errorDarker = Color(0xFF812222);
  static const errorLight = Color(0xFFFF8484);
  static const errorLighter = Color(0xFFFFE5E5);
  static const errorMain = Color(0xFFFF4242);
  static Color error98 = errorMain.withOpacity(0.98);
  static Color error68 = errorMain.withOpacity(0.68);
  static Color error52 = errorMain.withOpacity(0.52);
  static Color error36 = errorMain.withOpacity(0.36);
  static Color error20 = errorMain.withOpacity(0.20);
  static Color error8 = errorMain.withOpacity(0.8);

  static const grey100 = Color(0xFFF4F4F4);
  static const grey150 = Color(0xFFE7E7E7);
  static const grey200 = Color(0xFFD8D8D8);
  static const grey300 = Color(0xFFBCBCBC);
  static const grey400 = Color(0xFFA0A0A0);
  static const grey500 = Color(0xFF8C8C8C);
  static const grey600 = Color(0xFF777777);
  static const grey650 = Color(0xFF787878);
  static const grey700 = Color(0xFF646464);
  static const grey800 = Color(0xFF505050);
  static const grey900 = Color(0xFF3C3C3C);
  static const grey1000 = Color(0xFF141414);
  static Color grey98 = grey300.withOpacity(0.98);
  static Color grey68 = grey300.withOpacity(0.68);
  static Color grey52 = grey300.withOpacity(0.52);
  static Color grey36 = grey300.withOpacity(0.36);
  static Color grey20 = grey300.withOpacity(0.20);
  static Color grey8 = grey300.withOpacity(0.8);
  static Color grey08 = grey400.withOpacity(0.08);

  static const white = Color(0xFFF5F5F5);
  static const white100 = Color(0xFFFFFFFF);
  static const subtitle = Color(0xFFAFB2BA);

  static const black = Color(0xFF0B0B0D);
  static const black100 = Color(0xFF000000);

  static const title = Color(0xFF000000);
  static const body = Color(0xFF333333);
  static const label = Color(0xFF555555);
  static const placeholder = Color(0xFF888888);

  static const line = Color(0xFFE0CFBA);
  static const inputBackground = Color(0xFFF9F9F9);
  static const background = Color(0xFFF8F0E7);
  static const offWhite = Color(0xFFFCFCFC);

  static const textTitle = Color(0xFF202224);
  static const textBody = Color(0xFF727272);

  const AppColors._();
}
