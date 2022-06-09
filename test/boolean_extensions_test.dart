import 'package:dartlang_utils/dartlang_extensions.dart';
import 'package:test/test.dart';

void main() {
  group('Nullable true/false checks', () {
    test('isTrue', () {
      bool? b;
      expect(b.isTrue, false);
      b = true;
      expect(b.isTrue, true);
      b = false;
      expect(b.isTrue, false);
    });
    test('isFalse', () {
      bool? b;
      expect(b.isFalse, false);
      b = true;
      expect(b.isFalse, false);
      b = false;
      expect(b.isFalse, true);
    });
    test('isNotTrue', () {
      bool? b;
      expect(b.isNotTrue, true);
      b = true;
      expect(b.isNotTrue, false);
      b = false;
      expect(b.isNotTrue, true);
    });
    test('isNotFalse', () {
      bool? b;
      expect(b.isNotFalse, true);
      b = true;
      expect(b.isNotFalse, true);
      b = false;
      expect(b.isNotFalse, false);
    });
  });
}
