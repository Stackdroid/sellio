import 'package:flutter/material.dart' show InheritedWidget, Brightness, BuildContext;
import 'package:sellio/core/design_system/theme/typography/app_typography.dart';
import 'color/color_scheme/app_color_scheme.dart';

class SellioTheme extends InheritedWidget {
  final AppColorScheme colorScheme;
  final AppTypography typography;
  final Brightness brightness;

  const SellioTheme({
    super.key,
    required this.colorScheme,
    required this.typography,
    required this.brightness,
    required super.child,
  });

  static SellioTheme of(BuildContext context) {
    final theme = context.dependOnInheritedWidgetOfExactType<SellioTheme>();
    assert(theme != null, 'No SellioTheme found in context');
    return theme!;
  }

  @override
  bool updateShouldNotify(SellioTheme oldWidget) {
    return colorScheme != oldWidget.colorScheme ||
        typography != oldWidget.typography ||
        brightness != oldWidget.brightness;
  }
}