import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite_common/sqlite_api.dart';

Future<List<T>> _readQuery<T>(Database database, String query,
        T Function(Map<String, dynamic>) create, [List<Object?>? arguments]) =>
    database
        .rawQuery(query, arguments)
        .then((r) => r.map((e) => create(e)).toList());

/// BEGIN GETUNITS
Future<List<GetUnitsRow>> performGetUnits(
  Database database,
) {
  final query = '''
SELECT
	unit,
	unit_order,
	COUNT(*) AS word_count
FROM words
WHERE is_active=1
GROUP BY unit,unit_order
ORDER BY unit_order ASC;
''';
  return _readQuery(database, query, (d) => GetUnitsRow(d));
}

class GetUnitsRow extends SqliteRow {
  GetUnitsRow(Map<String, dynamic> data) : super(data);

  String? get unit => data['unit'] as String?;
  int? get unitOrder => data['unit_order'] as int?;
  int? get wordCount => data['word_count'] as int?;
}

/// END GETUNITS

/// BEGIN GETWORDSBYUNIT
Future<List<GetWordsByUnitRow>> performGetWordsByUnit(
  Database database, {
  String? selectedUnit,
}) {
  final query = '''
SELECT
	id,
	word,
	meaning,
	unit,
	explanation,
	unit_order,
	word_order,
	sort_order
FROM words
WHERE unit=?
	AND is_active=1
ORDER BY word_order ASC;
''';
  return _readQuery(
      database, query, (d) => GetWordsByUnitRow(d), [selectedUnit]);
}

class GetWordsByUnitRow extends SqliteRow {
  GetWordsByUnitRow(Map<String, dynamic> data) : super(data);

  int? get id => data['id'] as int?;
  String? get word => data['word'] as String?;
  String? get meaning => data['meaning'] as String?;
  String? get unit => data['unit'] as String?;
  String? get explanation => data['explanation'] as String?;
  int? get unitOrder => data['unit_order'] as int?;
  int? get wordOrder => data['word_order'] as int?;
  int? get sortOrder => data['sort_order'] as int?;
}

/// END GETWORDSBYUNIT

/// BEGIN GETALLWORDS
Future<List<GetAllWordsRow>> performGetAllWords(
  Database database,
) {
  final query = '''
SELECT
	id,
	word,
	meaning,
	unit,
	explanation,
	unit_order,
	word_order,
	sort_order
FROM words
WHERE is_active=1
ORDER BY unit_order ASC,word_order ASC;
''';
  return _readQuery(database, query, (d) => GetAllWordsRow(d));
}

class GetAllWordsRow extends SqliteRow {
  GetAllWordsRow(Map<String, dynamic> data) : super(data);

  int? get id => data['id'] as int?;
  String? get word => data['word'] as String?;
  String? get meaning => data['meaning'] as String?;
  String? get unit => data['unit'] as String?;
  String? get explanation => data['explanation'] as String?;
  int? get unitOrder => data['unit_order'] as int?;
  int? get wordOrder => data['word_order'] as int?;
  int? get sortOrder => data['sort_order'] as int?;
}

/// END GETALLWORDS
