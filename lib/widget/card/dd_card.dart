import 'package:flutter/material.dart';

class DDCard extends StatelessWidget {
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double radius;
  final double blur;
  final Color color;
  final Color? shadowColor;

  const DDCard({
    super.key,
    this.child,
    this.margin,
    this.padding,
    this.radius = 5,
    this.blur = 5,
    this.color = Colors.white,
    this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: [
            BoxShadow(
                color: shadowColor ?? Colors.grey.shade500, blurRadius: blur)
          ]),
      child: child,
    );
  }
}
