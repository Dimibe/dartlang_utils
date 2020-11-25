extension NumberExtensions on num {
  /// Determines if [this] is between [a] and [b] whereas the bounds
  /// are inclusive.
  bool between(int a, int b) {
    return this >= a && this <= b;
  }
}
