import 'package:flutter/material.dart';
import 'package:sellio/core/design_system/theme/app_theme.dart';

class SellioTextButton extends StatelessWidget {
  final bool isDisabled;
  final String text;
  final VoidCallback onPressed;

  const SellioTextButton({
    super.key,
    this.isDisabled = false,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final typography = context.typography;

    return GestureDetector(
      onTap: isDisabled ? null : onPressed,
      child: Text(
        text,
        style: typography.label.medium.copyWith(
          color: isDisabled ? colors.hint : colors.primary,
        ),
      ),
    );
  }
}
