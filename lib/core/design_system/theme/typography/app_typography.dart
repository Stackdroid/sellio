import 'package:flutter/material.dart';

@immutable
class AppTypography {
  final TypographyHeadline headline;
  final TypographyTitle title;
  final TypographyBody body;
  final TypographyLabel label;

  const AppTypography({
    required this.headline,
    required this.title,
    required this.body,
    required this.label,
  });
}

@immutable
class TypographyHeadline {
  final TextStyle large;
  final TextStyle medium;
  final TextStyle small;

  const TypographyHeadline({
    required this.large,
    required this.medium,
    required this.small,
  });
}

@immutable
class TypographyTitle {
  final TextStyle large;
  final TextStyle medium;
  final TextStyle small;

  const TypographyTitle({
    required this.large,
    required this.medium,
    required this.small,
  });
}

@immutable
class TypographyBody {
  final TextStyle large;
  final TextStyle medium;
  final TextStyle small;

  const TypographyBody({
    required this.large,
    required this.medium,
    required this.small,
  });
}

@immutable
class TypographyLabel {
  final TextStyle large;
  final TextStyle medium;
  final TextStyle small;
  final TextStyle extraSmall;

  const TypographyLabel({
    required this.large,
    required this.medium,
    required this.small,
    required this.extraSmall,
  });
}