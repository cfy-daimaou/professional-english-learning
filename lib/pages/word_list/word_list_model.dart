import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'word_list_widget.dart' show WordListWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WordListModel extends FlutterFlowModel<WordListWidget> {
  ///  Local state fields for this page.

  late LoggableList<String> _allUnits = LoggableList([]);
  set allUnits(List<String> value) {
    if (value != null) {
      _allUnits = LoggableList(value);
    }

    debugLogWidgetClass(this);
  }

  List<String> get allUnits =>
      _allUnits?..logger = () => debugLogWidgetClass(this);
  void addToAllUnits(String item) => allUnits.add(item);
  void removeFromAllUnits(String item) => allUnits.remove(item);
  void removeAtIndexFromAllUnits(int index) => allUnits.removeAt(index);
  void insertAtIndexInAllUnits(int index, String item) =>
      allUnits.insert(index, item);
  void updateAllUnitsAtIndex(int index, Function(String) updateFn) =>
      allUnits[index] = updateFn(allUnits[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in WordList widget.
  List<WordsRecord>? _allWordsQuery;
  set allWordsQuery(List<WordsRecord>? value) {
    _allWordsQuery = value;
    debugLogWidgetClass(this);
  }

  List<WordsRecord>? get allWordsQuery => _allWordsQuery;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(this);
  }

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'allUnits': debugSerializeParam(
            allUnits,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=uiBuilder&page=WordList',
            searchReference:
                'reference=QhsKEQoIYWxsVW5pdHMSBWVqdDIwcgYSAggDIAFQAVoIYWxsVW5pdHNiCFdvcmRMaXN0',
            name: 'String',
            nullable: false,
          )
        },
        actionOutputs: {
          'allWordsQuery': debugSerializeParam(
            allWordsQuery,
            ParamType.Document,
            isList: true,
            link:
                'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=uiBuilder&page=WordList',
            name: 'words',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk/tab=uiBuilder&page=WordList',
        searchReference: 'reference=OghXb3JkTGlzdFABWghXb3JkTGlzdA==',
        widgetClassName: 'WordList',
      );
}
