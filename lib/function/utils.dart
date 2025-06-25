class Utils {
  Utils._();

  /// check string is null or empty
  static bool isNullOREmpty(String? str) {
    return (str == null || str.trim().isEmpty);
  }

  /// check string is null or empty or zero
  static bool isNullOREmptyORZero(String? str) {
    return (str == null || str.trim().isEmpty || str == "0");
  }

  /// check strings are equals or not
  static bool equals(String str1, String str2, {bool ignoreCase = true}) {
    if (ignoreCase) {
      return (str1.toLowerCase() == str2.toLowerCase());
    } else {
      return (str1 == str2);
    }
  }
}
