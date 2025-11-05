import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sellio/core/design_system/theme/app_theme.dart';

class SellioSnackBar {
  static SnackBar show({
    required bool isError,
    required String title,
    required String message,
    required BuildContext context,
  }) {
    final colors = context.colorScheme;
    final typography = context.typography;

    return SnackBar(
      margin: EdgeInsetsGeometry.directional(
        bottom: MediaQuery.of(context).size.height - 200,
      ),
      backgroundColor: Colors.transparent,
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      content: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colors.surfaceLow,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: isError
                  ? colors.red.withAlpha(12)
                  : colors.green.withAlpha(12),
              blurRadius: 24,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    color: isError ? colors.errorVariant : colors.greenVariant,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: SvgPicture.asset(
                    width: 32,
                    height: 32,
                    isError
                        ? 'assets/icons/ic_alert.svg'
                        : 'assets/icons/ic_success.svg',
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        style: typography.label.large.copyWith(
                          color: colors.title,
                        ),
                      ),
                      Text(
                        message,
                        style: typography.body.small.copyWith(
                          color: colors.body,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 8,
              right: 8,
              child: GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: SvgPicture.asset(
                    width: 20,
                    height: 20,
                    'assets/icons/ic_cancel.svg',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
