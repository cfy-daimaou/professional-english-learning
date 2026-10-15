// ignore_for_file: unnecessary_getters_setters


import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilterTypeStruct extends BaseStruct {
  FilterTypeStruct({
    String? key,
    String? value,
  })  : _key = key,
        _value = value;

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

  static FilterTypeStruct fromMap(Map<String, dynamic> data) =>
      FilterTypeStruct(
        key: data['key'] as String?,
        value: data['value'] as String?,
      );

  static FilterTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? FilterTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'key': _key,
        'value': _value,
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
      }.withoutNulls;

  static FilterTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      FilterTypeStruct(
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
      );

  @override
  String toString() => 'FilterTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FilterTypeStruct &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([key, value]);
}
