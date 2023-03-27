import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'font_manager.dart';
import 'values_manager.dart';

TextStyle _getTextStyle(
  double fontSize,
  String fontFamily,
  FontWeight fontWeight,
  Color color,
) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: fontWeight,
  );
}

// thin style
TextStyle getThinStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.thin,
    color,
  );
}

// ultra light style
TextStyle getUltraLightStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.ultraLight,
    color,
  );
}

// light text style
TextStyle getLightStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.light,
    color,
  );
}

// regular text style
TextStyle getRegularStyle({
  double fontSize = FontSize.s14,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.regular,
    color,
  );
}

// medium text style
TextStyle getMediumStyle({
  double fontSize = FontSize.s14,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.medium,
    color,
  );
}

// semi bold text style
TextStyle getSemiBoldStyle({
  double fontSize = FontSize.s14,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.semiBold,
    color,
  );
}

// bold text style
TextStyle getBoldStyle({
  double fontSize = FontSize.s16,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.bold,
    color,
  );
}

// extra bold text style
TextStyle getExtraBoldStyle({
  double fontSize = FontSize.s18,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.bold,
    color,
  );
}

// black text style
TextStyle getBlackStyle({
  double fontSize = FontSize.s18,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.black,
    color,
  );
}

// Input Border
OutlineInputBorder getInputBorder({
  Color color = AppColors.primary,
  double borderRadius = AppSize.s12,
  double width = AppSize.s1,
}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(borderRadius),
    borderSide: BorderSide(
      color: color,
      width: AppSize.s1,
    ),
  );
}
