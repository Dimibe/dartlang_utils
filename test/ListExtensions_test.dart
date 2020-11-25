import 'package:test/test.dart';
import 'package:dartlang_utils/dartlang_extensions.dart' show ListExtensions;

void main() {
  test('list', () {
    expect([].countWhere((item) => true), 0);
    var list = ['this', 'is', 'a', 'test'];
    list.forEachIndexed((element, i) {
      expect(element, list[i]);
    });
    expect(list.countWhere((item) => item.length < 4), 2);
  });
}
