import '../Matrix.dart';
import 'MathUtils.dart';

/// Util class for operations on strings.
abstract class StringUtils {
  /// Null safe check if string is empty.
  ///
  /// See [String.isEmpty]
  static bool isEmpty(String? str) {
    return str == null || str.isEmpty;
  }

  /// Null safe check if string is blank.
  static bool isBlank(String? str) {
    return isEmpty(trim(str));
  }

  /// Null safe trim operation on a string.
  ///
  /// See [String.trim]
  static String? trim(String? str) {
    return str?.trim();
  }

  /// Returns the string itself or a default if the string is `null`.
  static String defaultString(String? str, String defaultStr) {
    return str ?? defaultStr;
  }

  /// Returns the string itself or a default if the string is `null` or empty.
  static String defaultIfEmpty(String? str, String defaultStr) {
    return isEmpty(str) ? defaultStr : str!;
  }

  /// Returns the string itself or a default if the string is `null` or blank.
  static String defaultIfBlank(String? str, String defaultStr) {
    return defaultIfEmpty(trim(str), defaultStr);
  }

  /// Null safe check if a string starts with a prefix.
  ///
  /// See [String.startsWith]
  static bool startsWith(String? str, Pattern prefix, [int index = 0]) {
    return str != null && str.startsWith(prefix, index);
  }

  /// Null safe check if a string starts with any of given prefixes.
  ///
  /// See also [String.startsWith]
  static bool startsWithAny(
    String? str,
    List<Pattern> prefixes, [
    int index = 0,
  ]) {
    return str != null &&
        prefixes.any((prefix) => str.startsWith(prefix, index));
  }

  /// Null safe check if a string contains a search pattern.
  ///
  /// See [String.contains]
  static bool contains(String? str, Pattern searchPattern,
      [int startIndex = 0]) {
    return str != null && str.contains(searchPattern, startIndex);
  }

  /// Null safe check if a string contains any of given search patterns.
  ///
  /// See [String.contains]
  static bool containsAny(
    String? str,
    List<Pattern> searchPatterns, [
    int startIndex = 0,
  ]) {
    return str != null &&
        searchPatterns.any((prefix) => str.contains(prefix, startIndex));
  }

  /// Abbreviates a String using dots.
  static String abbreviate(String str, int maxWidth, {int offset = 0}) {
    if (str.length <= maxWidth) {
      return str;
    } else if (offset < 3) {
      return '${str.substring(offset, (offset + maxWidth) - 3)}...';
    } else if (maxWidth - offset < 3) {
      return '...${str.substring(offset, (offset + maxWidth) - 3)}';
    }
    return '...${str.substring(offset, (offset + maxWidth) - 6)}...';
  }

  /// Null safe comparison of two strings according their lexical order.
  /// If one string is `null` it is treated as less.
  static int compare(String? str1, String? str2) {
    if (str1 == str2) {
      return 0;
    }
    if (str1 == null || str2 == null) {
      return str1 == null ? -1 : 1;
    }
    return str1.compareTo(str2);
  }

  /// Calculates the hamming distance between two strings.
  /// The hamming distance is the number of positions where two strings have
  /// different chars.
  ///
  /// Therefoer both string must have the same length.
  static int hammingDistance(String str1, String str2) {
    if (str1.length != str2.length) {
      throw FormatException('Strings must have the same length');
    }

    var l1 = str1.runes.toList();
    var l2 = str2.runes.toList();

    var distance = 0;
    for (var i = 0; i < l1.length; i++) {
      if (l1[i] != l2[i]) {
        distance++;
      }
    }
    return distance;
  }

  /// Calculates the levenshtein distance between two strings.
  /// The levenshtein distance is the number of deletions, insertions or
  /// substitutions needed to transform one string into the other.
  ///
  /// Therefoer both string must have the same length.
  static int levenshteinDistance(String str1, String str2) {
    if (str1 == str2) {
      return 0;
    }

    var l1 = str1.runes.toList();
    var l2 = str2.runes.toList();

    var matrix = Matrix(l1.length + 1, l2.length + 1);

    matrix.forEach((i, j) {
      if (i == 0 || j == 0) {
        if (i == 0) matrix[i][j] = j;
        if (j == 0) matrix[i][j] = i;
        return;
      }
      if (l1[i - 1] == l2[j - 1]) {
        matrix[i][j] = matrix[i - 1][j - 1];
        return;
      }

      var min = MathUtils.minOf([
        matrix[i - 1][j - 1],
        matrix[i - 1][j],
        matrix[i][j - 1],
      ]);
      matrix[i][j] = min + 1;
    });

    return matrix[l1.length][l2.length] as int;
  }
}
