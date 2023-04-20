import 'package:flutter/material.dart';

/// [KeyboardDismiss] when click outside widgets then dismiss keyboard
class KeyboardDismiss extends StatelessWidget {
  final Widget child;
  final bool onTapDismiss;
  final bool onDoubleTapDismiss;

  const KeyboardDismiss(
      {Key? key,
      required this.child,
      this.onTapDismiss = false,
      this.onDoubleTapDismiss = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTapDismiss) {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        }
      },
      onDoubleTap: () {
        if (onDoubleTapDismiss) {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        }
      },
      child: child,
    );
  }
}
