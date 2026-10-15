// ignore_for_file: unnecessary_getters_setters


import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WordItemStruct extends BaseStruct {
  WordItemStruct({
    String? word,
    String? meaning,
  })  : _word = word,
        _meaning = meaning;

  // "word" field.
  String? _word;
  String get word => _word ?? '';
  set word(String? val) => _word = val;

  bool hasWord() => _word != null;

  // "meaning" field.
  String? _meaning;
  String get meaning => _meaning ?? '';
  set meaning(String? val) => _meaning = val;

  bool hasMeaning() => _meaning != null;

  static WordItemStruct fromMap(Map<String, dynamic> data) => WordItemStruct(
        word: data['word'] as String?,
        meaning: data['meaning'] as String?,
      );

  static WordItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? WordItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'word': _word,
        'meaning': _meaning,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'word': serializeParam(
          _word,
          ParamType.String,
        ),
        'meaning': serializeParam(
          _meaning,
          ParamType.String,
        ),
      }.withoutNulls;

  static WordItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      WordItemStruct(
        word: deserializeParam(
          data['word'],
          ParamType.String,
          false,
        ),
        meaning: deserializeParam(
          data['meaning'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WordItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WordItemStruct &&
        word == other.word &&
        meaning == other.meaning;
  }

  @override
  int get hashCode => const ListEquality().hash([word, meaning]);
}
