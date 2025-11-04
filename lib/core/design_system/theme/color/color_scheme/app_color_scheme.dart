import 'package:flutter/material.dart';

@immutable
class AppColorScheme {
  final Color primary;
  final Color primaryVariant;
  final Color onPrimary;
  final Color onPrimaryBody;
  final Color secondary;
  final Color secondaryVariant;
  final Color surface;
  final Color surfaceLow;
  final Color surfaceHigh;
  final Color title;
  final Color body;
  final Color hint;
  final Color stroke;
  final Color red;
  final Color errorVariant;
  final Color green;
  final Color greenVariant;
  final Color disabled;

  const AppColorScheme({
    required this.primary,
    required this.primaryVariant,
    required this.onPrimary,
    required this.onPrimaryBody,
    required this.secondary,
    required this.secondaryVariant,
    required this.surface,
    required this.surfaceLow,
    required this.surfaceHigh,
    required this.title,
    required this.body,
    required this.hint,
    required this.stroke,
    required this.red,
    required this.errorVariant,
    required this.green,
    required this.greenVariant,
    required this.disabled
  });
}