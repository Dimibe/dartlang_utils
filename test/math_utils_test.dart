import 'package:dartlang_utils/dartlang_utils.dart';
import 'package:test/test.dart';

void main() {
  test('sum', () {
    expect(MathUtils.sum(2, 2), 4);
    expect(MathUtils.sum(2.5, 2.5), 5);
    expect(MathUtils.sum(1, 2.5), 3.5);

    expect(MathUtils.mult(2, 2), 4);
  });
  test('mult', () {
    expect(MathUtils.mult(2, 2), 4);
    expect(MathUtils.mult(1.5, 1.5), 2.25);
    expect(MathUtils.mult(1.5, 4), 6);
  });
  test('minOf', () {
    expect(() => MathUtils.minOf(<num>[]), throwsStateError);
    expect(MathUtils.minOf([1]), 1);
    expect(MathUtils.minOf([2, 4]), 2);
    expect(MathUtils.minOf([4, 2]), 2);
    expect(MathUtils.minOf([8, 4, 6]), 4);
  });
}
