import 'package:flutter/material.dart';

import 'package:sellio/core/design_system/theme/typography/app_typography.dart';

const defaultTypography = AppTypography(
  headline: TypographyHeadline(
    large: TextStyle(
      fontSize: 28,
      height: 42 / 28,
      fontWeight: FontWeight.w600,
      fontFamily: 'Rubik'
    ),
    medium: TextStyle(
      fontSize: 24,
      height: 36 / 24,
      fontWeight: FontWeight.w600,
      fontFamily: 'Rubik'
    ),
    small: TextStyle(
      fontSize: 20,
      height: 30 / 20,
      fontWeight: FontWeight.w600,
      fontFamily: 'Rubik'
    ),
  ),
  title: TypographyTitle(
    large: TextStyle(
      fontSize: 20,
      height: 30 / 20,
      fontWeight: FontWeight.w500,
      fontFamily: 'Rubik'
    ),
    medium: TextStyle(
        fontSize: 18,
        height: 28 / 18,
        fontWeight: FontWeight.w500,
        fontFamily: 'Rubik'
    ),
    small: TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w500,
        fontFamily: 'Rubik'
    ),
  ),
  body: TypographyBody(
    large: TextStyle(
        fontSize: 18,
        height: 28 / 18,
        fontWeight: FontWeight.w400,
        fontFamily: 'Rubik'
    ),
    medium: TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w400,
        fontFamily: 'Rubik'
    ),
    small: TextStyle(
        fontSize: 14,
        height: 22 / 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Rubik'
    ),
  ),
  label: TypographyLabel(
    large: TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w500,
        fontFamily: 'Rubik'
    ),
    medium: TextStyle(
        fontSize: 14,
        height: 22 / 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Rubik'
    ),
    small: TextStyle(
        fontSize: 12,
        height: 18 / 12,
        fontWeight: FontWeight.w500,
        fontFamily: 'Rubik'
    ),
    extraSmall: TextStyle(
        fontSize: 10,
        height: 14 / 10,
        fontWeight: FontWeight.w400,
        fontFamily: 'Rubik'
    ),
  ),
);