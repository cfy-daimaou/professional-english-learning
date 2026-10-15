import 'dart:io';
import 'package:professional_english_learning/backend/sqlite/word_store.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void check(bool condition, String message) {
  if (!condition) throw StateError(message);
}

/// Uses a disposable copy of the shipped seed and the production query code.
/// No Flutter engine, emulator, network connection or cloud service is needed.
Future<void> main() async {
  sqfliteFfiInit();
  final directory =
      await Directory.systemTemp.createTemp('english-offline-test-');
  final file =
      await File('assets/sqlite_db_files/professional_english_local.db')
          .copy('${directory.path}/words.db');
  final factory = databaseFactoryFfiNoIsolate;
  var database = await factory.openDatabase(file.path);
  try {
    var store = WordStore(database);
    final initial = await store.getAllWords();
    check(initial.length == 70, 'Expected the 70 bundled sample words');
    check(
        (await database.rawQuery('PRAGMA integrity_check'))
                .first
                .values
                .first ==
            'ok',
        'Seed integrity failed');
    check((await store.getWordsByUnit(selectedUnit: "' OR 1=1 --")).isEmpty,
        'Unit filtering must use SQL parameters');
    const unit = "Developer's unit";
    final id = await store.saveWord(
        word: "  developer's word  ",
        meaning: 'A test definition',
        unit: unit,
        explanation: 'Local only');
    check((await store.getWord(id))!.word == "developer's word",
        'Insert/trim failed');
    check((await store.getWordsByUnit(selectedUnit: unit)).length == 1,
        'Apostrophe in unit must round-trip');
    await store.saveWord(
        id: id,
        word: 'updated word',
        meaning: 'Updated definition',
        unit: 'Moved unit',
        explanation: 'Updated locally');
    check((await store.getWordsByUnit(selectedUnit: unit)).isEmpty,
        'Unit move failed');
    var duplicateRejected = false;
    try {
      await store.saveWord(
          word: 'updated word', meaning: 'Duplicate', unit: 'Moved unit');
    } on DatabaseException {
      duplicateRejected = true;
    }
    check(duplicateRejected, 'Duplicate word/unit must be rejected');
    check((await store.getAllWords()).length == 71, 'Duplicate must roll back');
    var emptyRejected = false;
    try {
      await store.saveWord(word: ' ', meaning: 'Definition', unit: 'Unit');
    } on ArgumentError {
      emptyRejected = true;
    }
    check(emptyRejected, 'Blank required field must be rejected');
    await database.close();
    database = await factory.openDatabase(file.path);
    store = WordStore(database);
    check((await store.getWord(id))!.explanation == 'Updated locally',
        'Edits must survive database close and reopen');
    await database.insert('word_progress', {
      'owner_id': 'test-only',
      'word_id': id,
      'created_at_ms': 0,
      'updated_at_ms': 0,
    });
    await store.deleteWord(id);
    check(await store.getWord(id) == null, 'Delete failed');
    check((await database.query('word_progress')).isEmpty,
        'Dependent progress not removed');
    check((await store.getAllWords()).length == 70,
        'Seed rows changed unexpectedly');
    check((await database.query('app_settings')).isEmpty,
        'Seed settings must be blank');
    check((await database.query('study_sessions')).isEmpty,
        'Seed sessions must be blank');
    stdout.writeln(
        'PASS: seed integrity, parameterized filtering, insert, trim, unit move, '
        'duplicate rollback, validation, reopen persistence, delete and progress cleanup.');
  } finally {
    await database.close();
    await directory.delete(recursive: true);
  }
}
