import 'dart:math' as math;

extension ListExtensions<T> on List<T> {
  /// Counts the elements for whichs the predicate holds.
  ///
  /// See [where].
  int countWhere(bool Function(T) test) {
    return where(test).length;
  }

  /// For each method with provides not only the element but the index as well.
  ///
  /// See [forEach].
  void forEachIndexed(void Function(T element, int index) f) {
    for (var i = 0; i < length; i++) {
      f(this[i], i);
    }
  }

  /// Return a random element of the list.
  T random([int? seed]) {
    return this[math.Random(seed).nextInt(length)];
  }

  /// Returns a random subset of the list with given length.
  List<T> randomSubset(int length, [int? seed]) {
    //TODO: Implement
    return this;
  }
}
