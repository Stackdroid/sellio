import 'package:flutter/material.dart';
import 'package:sellio/core/design_system/theme/app_theme.dart';

class SellioPrimaryButton extends StatelessWidget {
  final bool isDisabled;
  final String text;
  final bool isLoading;
  final bool isError;
  final VoidCallback onPressed;

  const SellioPrimaryButton({
    super.key,
    this.isDisabled = false,
    required this.text,
    this.isLoading = false,
    required this.isError,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final typography = context.typography;

    return GestureDetector(
      onTap: isDisabled
          ? null
          : isError
          ? null
          : onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        transformAlignment: AlignmentGeometry.center,
        decoration: BoxDecoration(
          color: isDisabled
              ? colors.disabled
              : isError
              ? colors.errorVariant
              : colors.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Text(
              text,
              style: typography.label.medium.copyWith(
                color: isDisabled
                    ? colors.hint
                    : isError
                    ? colors.red
                    : colors.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
