import 'package:test/test.dart';
import 'package:dartlang_utils/dartlang_extensions.dart'
    show NullableStringExtensions;

void main() {
  test('or', () {
    String? s;
    expect(s.or('test'), 'test');
    s = 'hello';
    expect(s.containsAny(['test']), false);
  });
}
