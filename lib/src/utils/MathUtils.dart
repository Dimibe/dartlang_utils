import 'dart:math';

abstract class MathUtils {
  static T minOf<T extends num>(List<T> list) {
    return list.reduce(min);
  }

  static T sum<T extends num>(T n1, T n2) {
    return n1 + n2 as T;
  }

  static T mult<T extends num>(T n1, T n2) {
    return (n1 * n2) as T;
  }
}
