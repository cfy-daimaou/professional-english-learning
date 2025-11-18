// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WordItemStruct extends FFFirebaseStruct {
  WordItemStruct({
    String? word,
    String? meaning,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _word = word,
        _meaning = meaning,
        super(firestoreUtilData);

  // "word" field.
  String? _word;
  String get word => _word ?? '';
  set word(String? val) {
    _word = val;
    debugLog();
  }

  bool hasWord() => _word != null;

  // "meaning" field.
  String? _meaning;
  String get meaning => _meaning ?? '';
  set meaning(String? val) {
    _meaning = val;
    debugLog();
  }

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
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'word': debugSerializeParam(
          word,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'meaning': debugSerializeParam(
          meaning,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
      };

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

WordItemStruct createWordItemStruct({
  String? word,
  String? meaning,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WordItemStruct(
      word: word,
      meaning: meaning,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WordItemStruct? updateWordItemStruct(
  WordItemStruct? wordItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    wordItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWordItemStructData(
  Map<String, dynamic> firestoreData,
  WordItemStruct? wordItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (wordItem == null) {
    return;
  }
  if (wordItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && wordItem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final wordItemData = getWordItemFirestoreData(wordItem, forFieldValue);
  final nestedData = wordItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = wordItem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWordItemFirestoreData(
  WordItemStruct? wordItem, [
  bool forFieldValue = false,
]) {
  if (wordItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(wordItem.toMap());

  // Add any Firestore field values
  wordItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWordItemListFirestoreData(
  List<WordItemStruct>? wordItems,
) =>
    wordItems?.map((e) => getWordItemFirestoreData(e, true)).toList() ?? [];
