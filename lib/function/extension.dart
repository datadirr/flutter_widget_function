import 'package:flutter/material.dart';
import 'package:flutter_widget_function/function/utils.dart';

extension StringExtension on String {
  int parseInt() {
    try {
      if (Utils.isNullOREmptyORZero(this) ||
          Utils.equals(trim(), "+") ||
          Utils.equals(trim(), "-")) {
        return 0;
      } else {
        return int.parse(split(".")[0]);
      }
    } catch (e) {
      return 0;
    }
  }

  double parseDouble({int? decimalDigits}) {
    try {
      if (Utils.isNullOREmpty(this) ||
          Utils.equals(trim(), ".") ||
          Utils.equals(trim(), "+") ||
          Utils.equals(trim(), "-")) {
        return (decimalDigits == null)
            ? 0
            : double.parse(0.toStringAsFixed(decimalDigits));
      } else {
        return (decimalDigits == null)
            ? double.parse(this)
            : double.parse((double.parse(this)).toStringAsFixed(decimalDigits));
      }
    } catch (e) {
      return 0;
    }
  }

  bool parseBool() {
    return Utils.equals(this, "1") ? true : false;
  }
}

extension IntExtension on int {
  bool parseBool() {
    return (this == 1);
  }
}

extension TextEditingControllerExtension on TextEditingController {
  String trimText() {
    return text.toString().trim();
  }
}
