import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'a_bout_widget.dart' show ABoutWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ABoutModel extends FlutterFlowModel<ABoutWidget> {
  ///  Local state fields for this page.

  late LoggableList<FilterTypeStruct> _filterField = LoggableList([]);
  set filterField(List<FilterTypeStruct> value) {
    if (value != null) {
      _filterField = LoggableList(value);
    }

    debugLogWidgetClass(this);
  }

  List<FilterTypeStruct> get filterField =>
      _filterField?..logger = () => debugLogWidgetClass(this);
  void addToFilterField(FilterTypeStruct item) => filterField.add(item);
  void removeFromFilterField(FilterTypeStruct item) => filterField.remove(item);
  void removeAtIndexFromFilterField(int index) => filterField.removeAt(index);
  void insertAtIndexInFilterField(int index, FilterTypeStruct item) =>
      filterField.insert(index, item);
  void updateFilterFieldAtIndex(
          int index, Function(FilterTypeStruct) updateFn) =>
      filterField[index] = updateFn(filterField[index]);

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
          'filterField': debugSerializeParam(
            filterField,
            ParamType.DataStruct,
            isList: true,
            link:
                'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=uiBuilder&page=ABout',
            searchReference:
                'reference=QjMKFAoLZmlsdGVyRmllbGQSBTdyYjhqchsSAggUKhUSEwoKRmlsdGVyVHlwZRIFaWliM2ZQAVoLZmlsdGVyRmllbGRiBUFCb3V0',
            name: 'FilterType',
            nullable: false,
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
            'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk/tab=uiBuilder&page=ABout',
        searchReference: 'reference=OgVBQm91dFABWgVBQm91dA==',
        widgetClassName: 'ABout',
      );
}
