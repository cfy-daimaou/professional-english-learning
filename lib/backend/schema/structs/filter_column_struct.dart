// ignore_for_file: unnecessary_getters_setters


import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilterColumnStruct extends BaseStruct {
  FilterColumnStruct({
    String? key,
    String? value,
    List<String>? options,
  })  : _key = key,
        _value = value,
        _options = options;

  // "key" field.
  String? _key;
  String get key => _key ?? '';
  set key(String? val) => _key = val;

  bool hasKey() => _key != null;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;

  bool hasValue() => _value != null;

  // "options" field.
  List<String>? _options;
  List<String> get options => _options ?? const [];
  set options(List<String>? val) => _options = val;

  void updateOptions(Function(List<String>) updateFn) {
    updateFn(_options ??= []);
  }

  bool hasOptions() => _options != null;

  static FilterColumnStruct fromMap(Map<String, dynamic> data) =>
      FilterColumnStruct(
        key: data['key'] as String?,
        value: data['value'] as String?,
        options: getDataList(data['options']),
      );

  static FilterColumnStruct? maybeFromMap(dynamic data) => data is Map
      ? FilterColumnStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'key': _key,
        'value': _value,
        'options': _options,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'key': serializeParam(
          _key,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.String,
        ),
        'options': serializeParam(
          _options,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static FilterColumnStruct fromSerializableMap(Map<String, dynamic> data) =>
      FilterColumnStruct(
        key: deserializeParam(
          data['key'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.String,
          false,
        ),
        options: deserializeParam<String>(
          data['options'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'FilterColumnStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is FilterColumnStruct &&
        key == other.key &&
        value == other.value &&
        listEquality.equals(options, other.options);
  }

  @override
  int get hashCode => const ListEquality().hash([key, value, options]);
}
