import 'dart:async';
import 'package:flutter/material.dart';

abstract class _ProgressDialog {
  ///You can set widget of dialog using this function,
  ///even the dialog already pop up.
  ///Set it Null to change it as default CircularProgressIndicator that already you set before
  void setChild(Widget child);

  void setDismissible(bool dismissible);
}

///Simple progress dialog, use Dialog Widget to custom it
class ProgressDialog implements _ProgressDialog {
  ///The context
  final BuildContext context;
  BuildContext? pdContext;

  ///The (optional) default progress widget that are displayed before message of the dialog,
  ///it will replaced when you use setChild, and it will restored if you `setChild(null)`.
  Widget? child;

  ///dialog dismiss when click outside
  bool dismissible;

  bool _show = false;

  ///dialog showed or not
  bool get isShowed => _show;

  ProgressDialog(this.context, {this.child, this.dismissible = false});

  ///Show progress dialog
  void show() async {
    if (!_show) {
      _show = true;
      _DDProgressDialogWidgetState._show = _show;
      _showDialog();
    }
  }

  ///Dismiss progress dialog
  void dismiss() {
    if (_show) {
      _show = false;
      _DDProgressDialogWidgetState._show = _show;
      Navigator.pop(context);
    }
  }

  void _showDialog() {
    Timer(const Duration(), () {
      showDialog(
        context: context,
        builder:
            (context) => DDProgressDialogWidget(
              dismissible: dismissible,
              child: child,
              onDismiss: (show) {
                _show = show;
              },
            ),
      );
    });
  }

  @override
  void setChild(Widget child) {
    this.child = child;
  }

  @override
  void setDismissible(bool dismissible) {
    this.dismissible = dismissible;
  }
}

class DDProgressDialogWidget extends StatefulWidget {
  final bool dismissible;
  final Widget? child;
  final Function(bool show) onDismiss;

  const DDProgressDialogWidget({
    super.key,
    required this.dismissible,
    required this.child,
    required this.onDismiss,
  });

  @override
  State<DDProgressDialogWidget> createState() => _DDProgressDialogWidgetState();
}

class _DDProgressDialogWidgetState extends State<DDProgressDialogWidget> {
  static bool _show = false;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        _dismiss();
      },
      child:
          (widget.child == null)
              ? const Center(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                ),
              )
              : Dialog(child: widget.child),
    );
  }

  _dismiss() {
    if (!widget.dismissible) {
      return false;
    }
    if (_show) {
      _show = false;
      widget.onDismiss(_show);
      Navigator.pop(context);
      return true;
    }
  }
}
