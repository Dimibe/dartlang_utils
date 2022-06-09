import 'dart:math' as math;

/// Util class for operations on numbers.
abstract class MathUtils {
  /// Returns the minimum element of [list].
  static T minOf<T extends num>(List<T> list) {
    return list.reduce(math.min);
  }

  /// Convinience method to sum up two numbers.
  /// Can be used e.g. in [Iterable.reduce]:
  /// ```dart
  /// myIterable.reduce(MathUtils.sum)
  /// ```
  static T sum<T extends num>(T n1, T n2) {
    return n1 + n2 as T;
  }

  /// Convinience method to multiply two numbers.
  /// Can be used e.g. in [Iterable.reduce]:
  /// ```dart
  /// myIterable.reduce(MathUtils.mult)
  /// ```
  static T mult<T extends num>(T n1, T n2) {
    return (n1 * n2) as T;
  }
}
