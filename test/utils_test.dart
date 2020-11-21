import 'package:test/test.dart';
import 'package:utils/utils.dart';

void main() {
  test('StringUtils isEmpty', () {
    expect(StringUtils.isEmpty(null), true);
    expect(StringUtils.isEmpty(''), true);
    expect(StringUtils.isEmpty(' '), false);
    expect(StringUtils.isEmpty('aaa'), false);
  });
}
