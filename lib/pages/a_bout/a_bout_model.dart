import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'a_bout_widget.dart' show ABoutWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '/flutter_flow/offline_fonts.dart';
import 'package:provider/provider.dart';

class ABoutModel extends FlutterFlowModel<ABoutWidget> {
  ///  Local state fields for this page.

  List<FilterTypeStruct> filterField = [];
  void addToFilterField(FilterTypeStruct item) => filterField.add(item);
  void removeFromFilterField(FilterTypeStruct item) => filterField.remove(item);
  void removeAtIndexFromFilterField(int index) => filterField.removeAt(index);
  void insertAtIndexInFilterField(int index, FilterTypeStruct item) =>
      filterField.insert(index, item);
  void updateFilterFieldAtIndex(
          int index, Function(FilterTypeStruct) updateFn) =>
      filterField[index] = updateFn(filterField[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
