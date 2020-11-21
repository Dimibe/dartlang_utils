class StringUtils {
  StringUtils._();
  static bool isEmpty(String str) {
    return str == null || str.isEmpty;
  }

  static String trim(String str) {
    return str?.trim();
  }

  static bool startsWith(String str, Pattern prefix, [int index = 0]) {
    return str != null && str.startsWith(prefix, index);
  }

  static bool startsWithAny(
    String str,
    List<Pattern> prefixes, [
    int index = 0,
  ]) {
    return str != null &&
        prefixes.any((prefix) => str.startsWith(prefix, index));
  }
}
