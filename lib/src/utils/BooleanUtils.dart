/// Util class for operations on booleans.
abstract class BooleanUtils {
  /// Checks if all values of [list] are true. If so `true` is returned
  /// otherwise `false` is returned.
  static bool and(List<bool> list) {
    for (var b in list) {
      if (!b) return false;
    }
    return true;
  }

  /// Checks if any of the values in [list] are true. If so `true` is returned
  /// otherwise `false` is returned.
  static bool or(List<bool> list) {
    for (var b in list) {
      if (b) return true;
    }
    return false;
  }

  /// Performs a xor operation on the values in [list] and returns the result.
  static bool xor(List<bool> list) {
    var result = false;
    for (var b in list) {
      result ^= b;
    }
    return result;
  }

  /// Transforms a [bool] into a [int]. If [b] is `true` `1` is returned
  /// otherwise `0`.
  static int toInt(bool b) {
    return b ? 1 : 0;
  }

  /// Transforms a [int] into a [bool]. If [i] is `1` `true` is returned
  /// otherwise `0`.
  static bool fromInt(int i) {
    return i == 1 ? true : false;
  }

  /// Transforms a [String] into a [bool]. If [str] is `'true'`, `true` will be
  /// returned otherwise `false`
  static bool fromString(String str) {
    return str == 'true';
  }
}
