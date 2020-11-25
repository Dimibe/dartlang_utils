class Matrix {
  final List<List<num>> _fields;

  Matrix(int i, int j)
      : _fields = List.generate(i, (i) => List<num>.filled(j, 0.0));

  List<num> operator [](int i) => _fields[i];
  operator []=(int i, List<num> column) => _fields[i] = column;

  void forEach(void Function(int i, int j) f) {
    for (var i = 0; i < _fields.length; i++) {
      for (var j = 0; j < _fields[i].length; j++) {
        f(i, j);
      }
    }
  }

  @override
  String toString() {
    return _fields.toString();
  }
}
