class Utils {
  Utils._();

  /// check null or empty for any datatype
  static bool isNullOrEmpty(dynamic value) {
    if (value == null) return true;
    if (value is String) return value.trim().isEmpty;
    if (value is Iterable || value is Map) return value.isEmpty;
    return false;
  }

  /// check null or empty or zero for any datatype
  static bool isNullOrEmptyOrZero(dynamic value) {
    if (value == null) return true;
    if (value is String) {
      final trimmed = value.trim();
      return trimmed.isEmpty ||
          trimmed == "0" ||
          RegExp(r'^0+$').hasMatch(trimmed); // matches "0", "00", "0000", etc.
    }
    if (value is num) return value == 0;
    if (value is Iterable || value is Map) return value.isEmpty;
    return false;
  }

  /// check equals or not for any datatype
  static bool equals(dynamic a, dynamic b, {bool ignoreCase = true}) {
    // If both are null, they are equal
    if (a == null && b == null) return true;

    // If only one is null, they are not equal
    if (a == null || b == null) return false;

    // If both are strings and ignoreCase is enabled
    if (a is String && b is String && ignoreCase) {
      return a.trim().toLowerCase() == b.trim().toLowerCase();
    }

    // Default equality check
    return a == b;
  }
}
