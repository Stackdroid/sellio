import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SellioSnackBar extends StatelessWidget {
  final bool isError;
  final String title;
  final String message;

  const SellioSnackBar({
    super.key,
    required this.isError,
    required this.title,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 46, height: 46,
                decoration: BoxDecoration(
                  color: isError
                      ? Theme.of(context).disabledColor
                      : Theme.of(context).disabledColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: SvgPicture.asset(
                  width: 32, height: 32,
                  isError
                      ? 'assets/icons/ic_alert.svg'
                      : 'assets/icons/ic_success.svg',
                ),
              ),
              const SizedBox(width: 8),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [Text(title), Text(message)]
              ),
            ],
          ),
          Positioned(
            top: 8, right: 8,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 24, height: 24,
                decoration: BoxDecoration(
                  color: Theme.of(context).disabledColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: SvgPicture.asset(
                  width: 20, height: 20,
                  'assets/icons/ic_cancel.svg',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
