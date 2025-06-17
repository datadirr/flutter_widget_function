import 'package:flutter/material.dart';
import 'package:flutter_widget_function/function/utils.dart';

extension DynamicExtension on dynamic {
  int parseInt() {
    try {
      if (Utils.isNullOrEmptyOrZero(this)) return 0;

      if (this is int) return this;
      if (this is double) return this.toInt();
      if (this is bool) return this ? 1 : 0;

      final str = toString().trim();
      if (Utils.equals(str, "+") || Utils.equals(str, "-")) return 0;

      return int.parse(str.split(".")[0]);
    } catch (e) {
      return 0;
    }
  }

  double parseDouble({int? decimalDigits}) {
    try {
      if (Utils.isNullOrEmptyOrZero(this)) {
        return decimalDigits == null
            ? 0
            : double.parse(0.toStringAsFixed(decimalDigits));
      }

      if (this is double) {
        return decimalDigits == null
            ? this
            : double.parse(this.toStringAsFixed(decimalDigits));
      }

      if (this is int) {
        return decimalDigits == null
            ? this.toDouble()
            : double.parse(this.toDouble().toStringAsFixed(decimalDigits));
      }

      if (this is bool) return this ? 1.0 : 0.0;

      final str = toString().trim();
      if (Utils.equals(str, "+") ||
          Utils.equals(str, "-") ||
          Utils.equals(str, ".")) {
        return decimalDigits == null
            ? 0
            : double.parse(0.toStringAsFixed(decimalDigits));
      }

      final parsed = double.parse(str);
      return decimalDigits == null
          ? parsed
          : double.parse(parsed.toStringAsFixed(decimalDigits));
    } catch (e) {
      return 0;
    }
  }

  bool parseBool() {
    try {
      if (this is bool) return this;
      if (this is num) return this != 0;
      final str = toString().trim().toLowerCase();
      return !(str.isEmpty || str == "0" || str == "false" || str == "null");
    } catch (e) {
      return false;
    }
  }

  String toSafeString({String defaultValue = ""}) {
    return Utils.isNullOrEmpty(this) ? defaultValue : toString().trim();
  }

  DateTime? parseDateTime({List<String> formats = const []}) {
    try {
      if (this == null) return null;

      if (this is DateTime) return this;
      if (this is int) {
        // Unix timestamp (seconds or milliseconds)
        return toString().length == 10
            ? DateTime.fromMillisecondsSinceEpoch(this * 1000)
            : DateTime.fromMillisecondsSinceEpoch(this);
      }

      final str = toString().trim();

      // Try built-in parsing
      final parsed = DateTime.tryParse(str);
      if (parsed != null) return parsed;

      // Try custom formats if provided (requires intl)
      for (final format in formats) {
        try {
          return DateFormat(format).parseStrict(str);
        } catch (_) {}
      }
    } catch (_) {}
    return null;
  }
}

extension TextEditingControllerExtension on TextEditingController {
  String trimText() {
    return text.toString().trim();
  }
}
