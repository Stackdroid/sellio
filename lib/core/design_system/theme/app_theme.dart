import 'package:flutter/material.dart' show BuildContext, Brightness;
import 'package:sellio/core/design_system/theme/sellio_theme.dart';
import 'package:sellio/core/design_system/theme/typography/app_typography.dart';
import 'color/color_scheme/app_color_scheme.dart';

class AppTheme {
  static AppColorScheme colorScheme(BuildContext context) {
    return SellioTheme.of(context).colorScheme;
  }

  static AppTypography typography(BuildContext context) {
    return SellioTheme.of(context).typography;
  }

  static Brightness brightness(BuildContext context) {
    return SellioTheme.of(context).brightness;
  }

  static bool isDark(BuildContext context) {
    return SellioTheme.of(context).brightness == Brightness.dark;
  }
}

extension ThemeContext on BuildContext {
  AppColorScheme get colorScheme => AppTheme.colorScheme(this);
  AppTypography get typography => AppTheme.typography(this);
  Brightness get brightness => AppTheme.brightness(this);
  bool get isDarkMode => AppTheme.isDark(this);
}