extension BooleanExtensions on bool? {
  /// Returns [true] if the value is not null and true.
  /// Otherwise [false] is returned.
  bool get isTrue => this != null && this!;

  /// Returns [true] if the value is not null and false.
  /// Otherwise [false] is returned.
  bool get isFalse => this != null && !this!;

  /// Returns [true] if the value is null or false.
  /// Otherwise [false] is returned.
  bool get isNotTrue => this == null || !this!;

  /// Returns [true] if the value is null and true.
  /// Otherwise [false] is returned.
  bool get isNotFalse => this == null || this!;

  /// Returns `1` if the value is `false`
  /// otherwise `0` is returned.
  int get toInt => this != null && this! ? 1 : 0;
}
