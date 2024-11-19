import 'package:flutter/material.dart';

class RoundContainer extends StatelessWidget {
  const RoundContainer({
    super.key,
    required this.child,
    this.borderRadius = 4,
    this.padding = const EdgeInsets.all(8),
    this.color,
    this.borderWidth,
    this.borderColor,
  });

  final Widget child;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Color? borderColor;
  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    Border? border;
    if (borderWidth != null && borderWidth! > 0) {
      border = Border.all(
        color: borderColor ?? Theme.of(context).primaryColor,
        width: borderWidth ?? 1,
      );
    }
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color ?? Theme.of(context).primaryColor,
        border: border,
      ),
      child: child,
    );
  }
}
