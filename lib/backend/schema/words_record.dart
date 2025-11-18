import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WordsRecord extends FirestoreRecord {
  WordsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "word" field.
  String? _word;
  String get word => _word ?? '';
  bool hasWord() => _word != null;

  // "meaning" field.
  String? _meaning;
  String get meaning => _meaning ?? '';
  bool hasMeaning() => _meaning != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  bool hasUnit() => _unit != null;

  // "explain" field.
  String? _explain;
  String get explain => _explain ?? '';
  bool hasExplain() => _explain != null;

  void _initializeFields() {
    _word = snapshotData['word'] as String?;
    _meaning = snapshotData['meaning'] as String?;
    _unit = snapshotData['unit'] as String?;
    _explain = snapshotData['explain'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('words');

  static Stream<WordsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WordsRecord.fromSnapshot(s));

  static Future<WordsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WordsRecord.fromSnapshot(s));

  static WordsRecord fromSnapshot(DocumentSnapshot snapshot) => WordsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WordsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WordsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WordsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WordsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;

  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'reference': debugSerializeParam(
          reference,
          ParamType.DocumentReference,
          link:
              'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=database',
          name: '',
          nullable: false,
        ),
        'word': debugSerializeParam(
          word,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=database',
          name: 'String',
          nullable: false,
        ),
        'meaning': debugSerializeParam(
          meaning,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=database',
          name: 'String',
          nullable: false,
        ),
        'unit': debugSerializeParam(
          unit,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=database',
          name: 'String',
          nullable: false,
        ),
        'explain': debugSerializeParam(
          explain,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=database',
          name: 'String',
          nullable: false,
        )
      };
}

Map<String, dynamic> createWordsRecordData({
  String? word,
  String? meaning,
  String? unit,
  String? explain,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'word': word,
      'meaning': meaning,
      'unit': unit,
      'explain': explain,
    }.withoutNulls,
  );

  return firestoreData;
}

class WordsRecordDocumentEquality implements Equality<WordsRecord> {
  const WordsRecordDocumentEquality();

  @override
  bool equals(WordsRecord? e1, WordsRecord? e2) {
    return e1?.word == e2?.word &&
        e1?.meaning == e2?.meaning &&
        e1?.unit == e2?.unit &&
        e1?.explain == e2?.explain;
  }

  @override
  int hash(WordsRecord? e) =>
      const ListEquality().hash([e?.word, e?.meaning, e?.unit, e?.explain]);

  @override
  bool isValidKey(Object? o) => o is WordsRecord;
}
