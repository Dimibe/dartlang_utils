# Utils package for Dart.

A dart package containing useful utils.

## Getting Started

 Add the package to your pubspec.yaml:

 ```yaml
 dartlang_utils: ^0.1.0-nullsafety.0
 ```
 
 In your dart file, import the library:

 ```Dart
import 'package:dartlang_utils/dartlang_utils.dart';
 ```
 If you want to use a specific util only you can use the `show` keyword:

 ```Dart
import 'package:dartlang_utils/dartlang_utils.dart' show StringUtils;
 ```


## Featured Utils

Currently this package contains the following Utils: 

* StringUtils

**More will follow soon, if you miss any function you can open an issue or a PR**

---

#### StringUtils

Currently the following operations are supported: 

```dart
bool isEmpty(String str)

bool isBlank(String str)

String trim(String str)

String defaultString(String str, String defaultStr)

String defaultIfEmpty(String str, String defaultStr)

String defaultIfBlank(String str, String defaultStr)

bool startsWith(String str, Pattern prefix, [int index = 0])

bool startsWithAny(String str,List<Pattern> prefixes, [int index = 0])

bool contains(String str, Pattern searchPattern,[int startIndex = 0])

bool containsAny(String str,List<Pattern> searchPatterns, [int startIndex = 0])

String abbreviate(String str, int maxWidth, {int offset = 0})

int compare(String str1, String str2)

int hammingDistance(String str1, String str2)
```