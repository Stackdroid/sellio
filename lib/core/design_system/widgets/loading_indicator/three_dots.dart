import 'package:flutter/material.dart';

class ThreeDotsLoadingIndicator extends StatefulWidget {
  final double dotSize;
  final double spacing;
  final Duration duration;
  final List<Color> colors;

  const ThreeDotsLoadingIndicator({
    super.key,
    this.dotSize = 7,
    this.spacing = 2,
    this.duration = const Duration(milliseconds: 1000),
    required this.colors
  });

  @override
  State<ThreeDotsLoadingIndicator> createState() => _ThreeDotsLoadingIndicatorState();
}

class _ThreeDotsLoadingIndicatorState extends State<ThreeDotsLoadingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late int colorCount;

  @override
  void initState() {
    super.initState();
    colorCount = widget.colors.length;
    controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final colorOffset = controller.value * colorCount;
        final currentColors = getCurrentColors(colorOffset);

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int i = 0; i < colorCount; i++)
              Container(
                margin: EdgeInsets.only(
                  right: i < colorCount - 1 ? widget.spacing : 0,
                ),
                width: widget.dotSize,
                height: widget.dotSize,
                decoration: BoxDecoration(
                  color: currentColors[i],
                  shape: BoxShape.circle,
                ),
              ),
          ],
        );
      },
    );
  }

  List<Color> getCurrentColors(double colorOffset) {
    final offset = colorOffset.floor();
    return List.generate(colorCount, (index) {
      final colorIndex = (colorCount - offset + index) % colorCount;
      return widget.colors[colorIndex];
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}