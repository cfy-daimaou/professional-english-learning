import 'package:flutter_test/flutter_test.dart';
import '../tool/verify_offline.dart' as verification;

void main() {
  test('Offline SQLite CRUD and reopen persistence', verification.main);
}
