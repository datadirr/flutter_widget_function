import 'package:flutter/material.dart';

extension UtilsExtension on Object? {
  /// Check null or empty for any type
  bool isNullOrEmpty() {
    final value = this;
    if (value == null) return true;
    if (value is String) return value.trim().isEmpty;
    if (value is Iterable) return value.isEmpty;
    if (value is Map) return value.isEmpty;
    return false;
  }

  /// Check null or empty or zero for any type
  bool isNullOrEmptyOrZero() {
    final value = this;
    if (value == null) return true;

    if (value is String) {
      final trimmed = value.trim();
      // Matches "0", "000", "0.0", "0.00", "00.000", etc.
      return trimmed.isEmpty || RegExp(r'^0+(\.0+)?$').hasMatch(trimmed);
    }

    if (value is num) return value == 0;
    if (value is Iterable) return value.isEmpty;
    if (value is Map) return value.isEmpty;
    return false;
  }

  /// Check equals with optional case-insensitive check
  bool equals(Object? other, {bool ignoreCase = true}) {
    final a = this;
    final b = other;

    if (a == null && b == null) return true;
    if (a == null || b == null) return false;

    if (a is String && b is String && ignoreCase) {
      return a.trim().toLowerCase() == b.trim().toLowerCase();
    }

    return a == b;
  }

  int parseInt() {
    try {
      if (isNullOrEmptyOrZero()) return 0;

      if (this is int) return this as int;
      if (this is double) return (this as double).toInt();
      if (this is bool) return (this as bool) ? 1 : 0;

      final str = toString().trim();
      if (str.equals("+") || str.equals("-")) return 0;

      return int.parse(str.split(".")[0]);
    } catch (e) {
      return 0;
    }
  }

  double parseDouble({int? decimalDigits}) {
    try {
      if (isNullOrEmptyOrZero()) {
        return decimalDigits == null
            ? 0
            : double.parse(0.toStringAsFixed(decimalDigits));
      }

      if (this is double) {
        final d = this as double;
        return decimalDigits == null
            ? d
            : double.parse(d.toStringAsFixed(decimalDigits));
      }

      if (this is int) {
        final i = this as int;
        return decimalDigits == null
            ? i.toDouble()
            : double.parse(i.toDouble().toStringAsFixed(decimalDigits));
      }

      if (this is bool) return (this as bool) ? 1.0 : 0.0;

      final str = toString().trim();
      if (str.equals("+") || str.equals("-") || str.equals(".")) {
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
      if (this is bool) return this as bool;
      if (this is num) return (this as num) != 0;
      final str = toString().trim().toLowerCase();
      return !(str.isEmpty || str == "0" || str == "false" || str == "null");
    } catch (e) {
      return false;
    }
  }

  String toSafeString({String defaultValue = ""}) {
    return isNullOrEmpty() ? defaultValue : toString().trim();
  }
}

extension TextEditingControllerExtension on TextEditingController {
  String trimText() {
    return text.toString().trim();
  }
}
