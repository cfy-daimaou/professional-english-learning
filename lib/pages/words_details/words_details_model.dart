import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'words_details_widget.dart' show WordsDetailsWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WordsDetailsModel extends FlutterFlowModel<WordsDetailsWidget> {
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
        widgetParameters: {
          'wordDoc': debugSerializeParam(
            widget?.wordDoc,
            ParamType.DocumentReference,
            link:
                'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=uiBuilder&page=WordsDetails',
            searchReference:
                'reference=Si4KEQoHd29yZERvYxIGcXRkeGswchkIBiABKhMKEQoFd29yZHMSCDB0NGdvdjMyUAFaB3dvcmREb2M=',
            name: 'words',
            nullable: true,
          )
        }.withoutNulls,
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
            'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk/tab=uiBuilder&page=WordsDetails',
        searchReference: 'reference=OgxXb3Jkc0RldGFpbHNQAVoMV29yZHNEZXRhaWxz',
        widgetClassName: 'WordsDetails',
      );
}
