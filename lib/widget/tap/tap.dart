import 'package:flutter/material.dart';

class Tap extends StatelessWidget {
  final GestureTapCallback? onTap;
  final Widget? child;
  final Color? splashColor;
  final Color? overlayColor;
  final Color? hoverColor;

  const Tap(
      {super.key,
      this.onTap,
      this.child,
      this.splashColor,
      this.overlayColor,
      this.hoverColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: splashColor ?? Colors.transparent,
      hoverColor: hoverColor ?? Colors.transparent,
      overlayColor: WidgetStateProperty.all(overlayColor ?? Colors.transparent),
      onTap: onTap,
      child: child,
    );
  }
}
