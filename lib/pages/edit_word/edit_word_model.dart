import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'edit_word_widget.dart' show EditWordWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditWordModel extends FlutterFlowModel<EditWordWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for task widget.
  FocusNode? taskFocusNode1;
  TextEditingController? taskTextController1;
  String? Function(BuildContext, String?)? taskTextController1Validator;
  // State field(s) for task widget.
  FocusNode? taskFocusNode2;
  TextEditingController? taskTextController2;
  String? Function(BuildContext, String?)? taskTextController2Validator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) {
    choiceChipsValueController?.value = val != null ? [val] : [];
    debugLogWidgetClass(this);
  }

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    taskFocusNode1?.dispose();
    taskTextController1?.dispose();

    taskFocusNode2?.dispose();
    taskTextController2?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'initWord': debugSerializeParam(
            widget?.initWord,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=uiBuilder&page=EditWord',
            searchReference:
                'reference=ShoKEgoIaW5pdFdvcmQSBnJhbXZnd3IECAMgAVABWghpbml0V29yZA==',
            name: 'String',
            nullable: true,
          ),
          'initMeaning': debugSerializeParam(
            widget?.initMeaning,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=uiBuilder&page=EditWord',
            searchReference:
                'reference=Sh0KFQoLaW5pdE1lYW5pbmcSBm15bjBrb3IECAMgAVABWgtpbml0TWVhbmluZw==',
            name: 'String',
            nullable: true,
          ),
          'initExplain': debugSerializeParam(
            widget?.initExplain,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=uiBuilder&page=EditWord',
            searchReference:
                'reference=Sh0KFQoLaW5pdEV4cGxhaW4SBjNid205b3IECAMgAVABWgtpbml0RXhwbGFpbg==',
            name: 'String',
            nullable: true,
          ),
          'initUnit': debugSerializeParam(
            widget?.initUnit,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=uiBuilder&page=EditWord',
            searchReference:
                'reference=ShoKEgoIaW5pdFVuaXQSBjhvMjVzeXIECAMgAVABWghpbml0VW5pdA==',
            name: 'String',
            nullable: true,
          ),
          'editWordDoc': debugSerializeParam(
            widget?.editWordDoc,
            ParamType.DocumentReference,
            link:
                'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=uiBuilder&page=EditWord',
            searchReference:
                'reference=SjIKFQoLZWRpdFdvcmREb2MSBml4a3NiNXIZCAYgASoTChEKBXdvcmRzEggwdDRnb3YzMlABWgtlZGl0V29yZERvYw==',
            name: 'words',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'taskText1': debugSerializeParam(
            taskTextController1?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=uiBuilder&page=EditWord',
            name: 'String',
            nullable: true,
          ),
          'taskText2': debugSerializeParam(
            taskTextController2?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=uiBuilder&page=EditWord',
            name: 'String',
            nullable: true,
          ),
          'descriptionText': debugSerializeParam(
            descriptionTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=uiBuilder&page=EditWord',
            name: 'String',
            nullable: true,
          ),
          'choiceChipsValue': debugSerializeParam(
            choiceChipsValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=uiBuilder&page=EditWord',
            name: 'String',
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
            'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk/tab=uiBuilder&page=EditWord',
        searchReference: 'reference=OghFZGl0V29yZFABWghFZGl0V29yZA==',
        widgetClassName: 'EditWord',
      );
}
