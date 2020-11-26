# Utils package for Dart.

A dart package containing a collection of useful util and extension classes.

## Features
* Null safe boolean checks for true, false, not true and not false
* Random string generation
* String similarity functions: Hamming distance and Levenshtein distance
* String abbreviation function
* Convenience functions which can be used e.g in iterable.reduce
* For each function on list with the current item and index

## Getting Started

 Add the package to your pubspec.yaml:

 ```yaml
 dartlang_utils: ^0.2.0-nullsafety.1
 ```
 
 In your dart file, import the library. 
 There is a seperate import path for utils and extension. So in case you want to only use either utils or the extensions, you just can import only the one you want.

If you want to use the **utils** import the following file:

 ```Dart
import 'package:dartlang_utils/dartlang_utils.dart';
 ```
 In case you want to use the **extension methods** import the following dart file: 
```Dart
import 'package:dartlang_utils/dartlang_extensions.dart';
 ```

 If you want to use a specific util or extension only you can use the `show` keyword:

 ```Dart
import 'package:dartlang_utils/dartlang_utils.dart' show StringUtils;
import 'package:dartlang_utils/dartlang_extensions.dart' show BooleanExtensions;
 ```

## Featured Utils

Currently this package contains the following utils: 

* StringUtils
* MathUtils

## Featured Extensions

Currently this package contains the following extensions: 

* BooleanExtensions
* ListExtensions
* NumberExtensions
* StringExtensions
* NullableStringExtensions

**More will follow soon, if you miss any function you can open an issue or a PR**

---

#### StringUtils

Currently the following operations are supported: 

```dart
/// Null safe check if string is empty.
bool isEmpty(String? str)

/// Null safe check if string is blank.
bool isBlank(String? str)

/// Null safe trim operation on a string.
String? trim(String? str)

/// Returns the string itself or a default if the string is `null`.
String defaultString(String? str, String defaultStr)

/// Returns the string itself or a default if the string is `null` or empty.
String defaultIfEmpty(String? str, String defaultStr)

/// Returns the string itself or a default if the string is `null` or blank.
String defaultIfBlank(String? str, String defaultStr)

/// Null safe check if a string starts with [prefix].
bool startsWith(String? str, Pattern prefix, [int index = 0])

/// Null safe check if a string starts with any of [prefixes].
bool startsWithAny(String? str,List<Pattern> prefixes, [int index = 0])

/// Null safe check if a string contains [searchPattern].
bool contains(String? str, Pattern searchPattern,[int startIndex = 0])

/// Null safe check if a string contains any of [searchPatterns].
bool containsAny(String? str,List<Pattern> searchPatterns, [int startIndex = 0])

/// Abbreviates a string with [maxWidth] using dots.
/// Example: StringUtils.abbreviate('0124567890', 6)  = '012...'
String abbreviate(String str, int maxWidth, {int offset = 0})

/// Null safe comparison of two strings according their lexical order.
int compare(String? str1, String? str2)

/// Creates a random alpha numeric string.
String random({int? length, bool includeNumeric = true})
    
/// String similarity:
/// Calculates the hamming distance between two strings.
/// The hamming distance is the number of positions where two strings have
/// different chars.
int hammingDistance(String str1, String str2)

/// String similarity:
/// Calculates the levenshtein distance between two strings.
/// The levenshtein distance is the number of deletions, insertions or
/// substitutions needed to transform one string into the other.
int levenshteinDistance(String str1, String str2)
```

#### MathUtils

Currently the following operations are supported: 

```dart
  /// Returns the minimum element of [list].
  static T minOf<T extends num>(List<T> list)

  /// Convinience method to sum up two numbers.
  /// Can be used e.g. in [Iterable.reduce]: myIterable.reduce(MathUtils.mult)
  static T sum<T extends num>(T n1, T n2)

  /// Convinience method to multiply two numbers.
  /// Can be used e.g. in [Iterable.reduce]: myIterable.reduce(MathUtils.mult)
  static T mult<T extends num>(T n1, T n2) 
```

---

#### BooleanExtensions

Currently the following operations are supported: 

```dart 
  /// Returns [true] if the value is not null and true.
  /// Otherwise [false] is returned.
  bool get isTrue 

  /// Returns [true] if the value is not null and false.
  /// Otherwise [false] is returned.
  bool get isFalse

  /// Returns [true] if the value is null or false.
  /// Otherwise [false] is returned.
  bool get isNotTrue

  /// Returns [true] if the value is null and true.
  /// Otherwise [false] is returned.
  bool get isNotFalse
```

#### ListExtensions

Currently the following operations are supported: 

```dart 
/// Counts the elements for whichs the predicate holds.
int countWhere(bool Function(T) test)

/// For each method with provides not only the element but the index as well.
void forEachIndexed(void Function(T element, int index) f)

/// Return a random element of the list.
T random([int? seed])
```
#### NumberExtensions

Currently the following operations are supported: 

```dart 
/// Determines if [this] is between [a] and [b] whereas the bounds are inclusive.
bool between(int a, int b)
```

#### StringExtensions

Currently the following operations are supported: 

```dart 
/// Abbreviates a String using dots.
String abbreviate(int maxWidth, {int offset = 0})
```

#### NullsafeStringExtensions

Currently the following operations are supported: 

```dart
/// Returns the string itself if not null otherwise the other string.
String or(String other) 

/// Null safe check if the string starts with any of given prefixes.
bool startsWithAny(List<Pattern> prefixes, [int index = 0])

/// Null safe check if a string contains any of [searchPatterns].
bool containsAny(List<Pattern> searchPatterns, [int startIndex = 0])

/// Null safe check if string is blank.
bool get isBlank 
```