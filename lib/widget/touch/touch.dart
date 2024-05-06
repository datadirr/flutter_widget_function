import 'package:flutter/material.dart';

class Touch extends StatelessWidget {
  final bool? disable;
  final Widget? child;

  const Touch({super.key, this.disable, this.child});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(ignoring: disable ?? false, child: child);
  }
}
