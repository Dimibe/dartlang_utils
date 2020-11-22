import 'package:dartlang_utils/dartlang_utils.dart';
import 'package:test/test.dart';

void main() {
  test('isEmpty', () {
    expect(StringUtils.isEmpty(null), true);
    expect(StringUtils.isEmpty(''), true);
    expect(StringUtils.isEmpty(' '), false);
    expect(StringUtils.isEmpty('aaa'), false);
  });
  test('isBLank', () {
    expect(StringUtils.isBlank(null), true);
    expect(StringUtils.isBlank(''), true);
    expect(StringUtils.isBlank(' '), true);
    expect(StringUtils.isBlank('aaa'), false);
  });

  test('defaultString', () {
    expect(StringUtils.defaultString(null, 'a'), 'a');
    expect(StringUtils.defaultString('', 'a'), '');
    expect(StringUtils.defaultString(' ', 'a'), ' ');
    expect(StringUtils.defaultString('abc', 'a'), 'abc');
  });

  test('defaultIfEmpty', () {
    expect(StringUtils.defaultIfEmpty(null, 'a'), 'a');
    expect(StringUtils.defaultIfEmpty('', 'a'), 'a');
    expect(StringUtils.defaultIfEmpty(' ', 'a'), ' ');
    expect(StringUtils.defaultIfEmpty('abc', 'a'), 'abc');
  });

  test('defaultIfBlank', () {
    expect(StringUtils.defaultIfBlank(null, 'a'), 'a');
    expect(StringUtils.defaultIfBlank('', 'a'), 'a');
    expect(StringUtils.defaultIfBlank(' ', 'a'), 'a');
    expect(StringUtils.defaultIfBlank('abc', 'a'), 'abc');
  });

  test('abbreviate', () {
    expect(StringUtils.abbreviate(null, 1), null);
    expect(StringUtils.abbreviate('', 4), '');
    expect(StringUtils.abbreviate('01', 3), '01');
    expect(StringUtils.abbreviate('0124', 3), '...');
    expect(StringUtils.abbreviate('012345', 4, offset: 4), '...4');
    expect(StringUtils.abbreviate('0123456789', 4), '0...');
    expect(StringUtils.abbreviate('0123456789', 5), '01...');
    expect(StringUtils.abbreviate('0123456789', 5, offset: 1), '12...');
    expect(StringUtils.abbreviate('0123456789', 5, offset: 2), '23...');
    expect(StringUtils.abbreviate('0123456789', 10, offset: 4), '0123456789');
    expect(StringUtils.abbreviate('0123456789', 9, offset: 4), '...456...');
    expect(StringUtils.abbreviate("0123456789abcdefg", 10, offset: 8),
        '...89abcde');
  });

  test('compare', () {
    expect(StringUtils.compare(null, 'a'), -1);
    expect(StringUtils.compare('a', null), 1);
    expect(StringUtils.compare(null, null), 0);
    expect(StringUtils.compare('a', 'a'), 0);
    expect(StringUtils.compare('a', 'ab'), -1);
    expect(StringUtils.compare('a', 'A'), 1);
    expect(StringUtils.compare('a', 'AB'), 1);
    expect(StringUtils.compare('b', 'aaa'), 1);
    expect(StringUtils.compare('ab', 'A'), 1);
  });

  test('startsWith', () {
    expect(StringUtils.startsWith(null, 'a'), false);
    expect(StringUtils.startsWith('', 'a'), false);
    expect(StringUtils.startsWith('', ''), true);
    expect(StringUtils.startsWith('abc', 'a'), true);
    expect(StringUtils.startsWith('abc', 'b'), false);
  });

  test('startsWithAny', () {
    expect(StringUtils.startsWithAny(null, ['a']), false);
    expect(StringUtils.startsWithAny('', ['a']), false);
    expect(StringUtils.startsWithAny('', ['', 'a']), true);
    expect(StringUtils.startsWithAny('abc', ['a', 'c']), true);
    expect(StringUtils.startsWithAny('abc', ['b', 'c']), false);
  });

  test('contains', () {
    expect(StringUtils.contains(null, 'a'), false);
    expect(StringUtils.contains('', 'a'), false);
    expect(StringUtils.contains('', ''), true);
    expect(StringUtils.contains('abc', 'a'), true);
    expect(StringUtils.contains('abc', 'b'), true);
    expect(StringUtils.contains('abc', 'B'), false);
  });

  test('containsAny', () {
    expect(StringUtils.containsAny(null, ['a']), false);
    expect(StringUtils.containsAny('', ['a']), false);
    expect(StringUtils.containsAny('', ['', 'a']), true);
    expect(StringUtils.containsAny('abc', ['a', 'd']), true);
    expect(StringUtils.containsAny('abc', ['e', 'd']), false);
    expect(StringUtils.containsAny('abc', ['B', 'c']), true);
  });
}
