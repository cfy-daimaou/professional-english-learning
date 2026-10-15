import 'package:sqflite_common/sqlite_api.dart';
import 'queries/read.dart';

/// Parameterized, local-only vocabulary storage, independent of Flutter UI.
class WordStore {
  WordStore(this.database);
  final Database database;

  Future<List<GetAllWordsRow>> getAllWords() => performGetAllWords(database);
  Future<List<GetUnitsRow>> getUnits() => performGetUnits(database);
  Future<List<GetWordsByUnitRow>> getWordsByUnit({String? selectedUnit}) =>
      performGetWordsByUnit(database, selectedUnit: selectedUnit);

  Future<GetAllWordsRow?> getWord(int id) async {
    final rows = await database.query('words',
        where: 'id = ? AND is_active = 1', whereArgs: [id], limit: 1);
    return rows.isEmpty ? null : GetAllWordsRow(rows.single);
  }

  Future<int> saveWord({
    int? id,
    required String word,
    required String meaning,
    required String unit,
    String explanation = '',
  }) async {
    word = word.trim();
    meaning = meaning.trim();
    unit = unit.trim();
    if (word.isEmpty || meaning.isEmpty || unit.isEmpty) {
      throw ArgumentError('Word, meaning and unit are required.');
    }
    return database.transaction((txn) async {
      final unitRows = await txn.rawQuery(
          'SELECT MIN(unit_order) AS ordering FROM words WHERE unit = ?',
          [unit]);
      final allUnits = await txn.rawQuery(
          'SELECT COALESCE(MAX(unit_order), 0) + 1 AS ordering FROM words');
      final unitOrder =
          (unitRows.single['ordering'] ?? allUnits.single['ordering']) as int;
      final values = <String, Object?>{
        'word': word,
        'meaning': meaning,
        'unit': unit,
        'explanation': explanation.trim(),
        'unit_order': unitOrder,
      };
      if (id == null) {
        final order = await txn.rawQuery(
            'SELECT COALESCE(MAX(word_order), 0) + 1 AS ordering FROM words WHERE unit = ?',
            [unit]);
        final sort = await txn.rawQuery(
            'SELECT COALESCE(MAX(sort_order), 0) + 1 AS ordering FROM words');
        values.addAll({
          'word_order': order.single['ordering'],
          'sort_order': sort.single['ordering'],
          'is_active': 1
        });
        return txn.insert('words', values);
      }
      final current = await txn
          .query('words', where: 'id = ? AND is_active = 1', whereArgs: [id]);
      if (current.isEmpty) throw StateError('This word no longer exists.');
      if (current.single['unit'] != unit) {
        final order = await txn.rawQuery(
            'SELECT COALESCE(MAX(word_order), 0) + 1 AS ordering FROM words WHERE unit = ?',
            [unit]);
        values['word_order'] = order.single['ordering'];
      }
      await txn.update('words', values, where: 'id = ?', whereArgs: [id]);
      return id;
    });
  }

  Future<void> deleteWord(int id) async {
    await database.transaction((txn) async {
      await txn.delete('word_progress', where: 'word_id = ?', whereArgs: [id]);
      await txn.delete('words', where: 'id = ?', whereArgs: [id]);
    });
  }
}
