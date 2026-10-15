import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'init.dart';
import 'word_store.dart';
export 'queries/read.dart';

class SQLiteManager extends WordStore {
  SQLiteManager._(Database database) : super(database);
  static SQLiteManager? _instance;
  static SQLiteManager get instance =>
      _instance ?? (throw StateError('SQLite has not been initialized.'));

  static Future<void> initialize() async {
    if (kIsWeb) {
      throw UnsupportedError(
          'This offline SQLite build requires Android or iOS.');
    }
    final database = await initializeDatabaseFromDbFile(
        'professional_english_local_d_b', 'professional_english_local.db');
    _instance = SQLiteManager._(database);
  }
}
