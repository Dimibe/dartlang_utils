import 'package:dartlang_utils/dartlang_utils.dart' show StringUtils;

void main() {
  var shortend = StringUtils.abbreviate('This is an example.', 7);
  print(shortend);
}
