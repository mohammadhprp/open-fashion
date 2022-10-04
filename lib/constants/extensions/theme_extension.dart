import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colors => theme.colorScheme;

  TextStyle? get titleXLarge => textTheme.titleLarge;
  TextStyle? get largeSubtitle => textTheme.titleSmall;
  TextStyle? get mediumSubtitle => textTheme.bodyMedium;
}
