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
import '/flutter_flow/offline_fonts.dart';
import 'package:provider/provider.dart';

class FilterDialogModel extends FlutterFlowModel<FilterDialogWidget> {
  ///  Local state fields for this component.

  FilterColumnStruct? chooseCategory;
  void updateChooseCategoryStruct(Function(FilterColumnStruct) updateFn) {
    updateFn(chooseCategory ??= FilterColumnStruct());
  }

  List<FilterTypeStruct> selectedFilter = [];
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
