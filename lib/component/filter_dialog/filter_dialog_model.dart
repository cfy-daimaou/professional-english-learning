import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'filter_dialog_widget.dart' show FilterDialogWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FilterDialogModel extends FlutterFlowModel<FilterDialogWidget> {
  ///  Local state fields for this component.

  FilterColumnStruct? _chooseCategory;
  set chooseCategory(FilterColumnStruct? value) {
    _chooseCategory = value;
    debugLogWidgetClass(this);
  }

  FilterColumnStruct? get chooseCategory =>
      _chooseCategory?..logger = () => debugLogWidgetClass(this);
  void updateChooseCategoryStruct(Function(FilterColumnStruct) updateFn) {
    updateFn(chooseCategory ??= FilterColumnStruct());
    debugLogWidgetClass(this);
  }

  late LoggableList<FilterTypeStruct> _selectedFilter = LoggableList([]);
  set selectedFilter(List<FilterTypeStruct> value) {
    if (value != null) {
      _selectedFilter = LoggableList(value);
    }

    debugLogWidgetClass(this);
  }

  List<FilterTypeStruct> get selectedFilter =>
      _selectedFilter?..logger = () => debugLogWidgetClass(this);
  void addToSelectedFilter(FilterTypeStruct item) => selectedFilter.add(item);
  void removeFromSelectedFilter(FilterTypeStruct item) =>
      selectedFilter.remove(item);
  void removeAtIndexFromSelectedFilter(int index) =>
      selectedFilter.removeAt(index);
  void insertAtIndexInSelectedFilter(int index, FilterTypeStruct item) =>
      selectedFilter.insert(index, item);
  void updateSelectedFilterAtIndex(
          int index, Function(FilterTypeStruct) updateFn) =>
      selectedFilter[index] = updateFn(selectedFilter[index]);

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'filterColumn': debugSerializeParam(
            widget?.filterColumn,
            ParamType.DataStruct,
            isList: true,
            link:
                'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=uiBuilder&page=FilterDialog',
            searchReference:
                'reference=SjkKFgoMZmlsdGVyQ29sdW1uEgYyY2duaWpyHxICCBQgASoXEhUKDEZpbHRlckNvbHVtbhIFc2tubXNQAFoMZmlsdGVyQ29sdW1u',
            name: 'FilterColumn',
            nullable: true,
          ),
          'selectedFilterValue': debugSerializeParam(
            widget?.selectedFilterValue,
            ParamType.DataStruct,
            isList: true,
            link:
                'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=uiBuilder&page=FilterDialog',
            searchReference:
                'reference=Sj4KHQoTc2VsZWN0ZWRGaWx0ZXJWYWx1ZRIGazNqcmRsch0SAggUIAEqFRITCgpGaWx0ZXJUeXBlEgVpaWIzZlAAWhNzZWxlY3RlZEZpbHRlclZhbHVl',
            name: 'FilterType',
            nullable: true,
          ),
          'onApply': debugSerializeParam(
            widget?.onApply,
            ParamType.Action,
            link:
                'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=uiBuilder&page=FilterDialog',
            searchReference:
                'reference=SlEKEQoHb25BcHBseRIGOXJjN3dvcjwIFSABMjYKFQoLZmlsdGVyVmFsdWUSBjBhbHRjMHIdEgIIFCAAKhUSEwoKRmlsdGVyVHlwZRIFaWliM2ZQAFoHb25BcHBseQ==',
            name: 'Future Function(List<FilterTypeStruct>? filterValue)',
            nullable: true,
          )
        }.withoutNulls,
        localStates: {
          'chooseCategory': debugSerializeParam(
            chooseCategory,
            ParamType.DataStruct,
            link:
                'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=uiBuilder&page=FilterDialog',
            searchReference:
                'reference=QjYKFwoOY2hvb3NlQ2F0ZWdvcnkSBWx1MHNschsIFCoXEhUKDEZpbHRlckNvbHVtbhIFc2tubXNQAFoOY2hvb3NlQ2F0ZWdvcnliDEZpbHRlckRpYWxvZw==',
            name: 'FilterColumn',
            nullable: true,
          ),
          'selectedFilter': debugSerializeParam(
            selectedFilter,
            ParamType.DataStruct,
            isList: true,
            link:
                'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk?tab=uiBuilder&page=FilterDialog',
            searchReference:
                'reference=QjYKFwoOc2VsZWN0ZWRGaWx0ZXISBTUxZm5lchsSAggUKhUSEwoKRmlsdGVyVHlwZRIFaWliM2ZQAFoOc2VsZWN0ZWRGaWx0ZXJiDEZpbHRlckRpYWxvZw==',
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
            'https://app.flutterflow.io/project/product-filtercomponent-jkvmwk/tab=uiBuilder&page=FilterDialog',
        searchReference: 'reference=OgxGaWx0ZXJEaWFsb2dQAFoMRmlsdGVyRGlhbG9n',
        widgetClassName: 'FilterDialog',
      );
}
