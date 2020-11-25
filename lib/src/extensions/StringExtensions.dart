import '../utils/StringUtils.dart';

extension NullableStringExtensions on String? {
  /// Returns the string itself if not null otherwise the other string.
  String or(String other) {
    return this ?? other;
  }

  /// Null safe check if the string starts with any of given prefixes.
  ///
  /// See also [StringUtils.startsWithAny]
  bool startsWithAny(List<Pattern> prefixes, [int index = 0]) {
    return StringUtils.startsWithAny(this, prefixes, index);
  }

  bool containsAny(List<Pattern> searchPatterns, [int startIndex = 0]) {
    return StringUtils.containsAny(this, searchPatterns, startIndex);
  }

  /// Null safe check if string is blank.
  bool get isBlank {
    return StringUtils.isBlank(this);
  }
}

extension StringExtensions on String {
  /// Abbreviates a String using dots.
  ///
  /// See [StringUtils.abbreviate]
  String abbreviate(int maxWidth, {int offset = 0}) {
    return StringUtils.abbreviate(this, maxWidth, offset: offset);
  }
}
