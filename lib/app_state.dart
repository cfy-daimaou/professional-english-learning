import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _SmartPhoneFilter = prefs
              .getStringList('ff_SmartPhoneFilter')
              ?.map((x) {
                try {
                  return FilterColumnStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _SmartPhoneFilter;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<FilterColumnStruct> _SmartPhoneFilter = [
    FilterColumnStruct.fromSerializableMap(jsonDecode(
        '{\"key\":\"price\",\"value\":\"Price\",\"options\":\"[\\\"1000 - 2000\\\",\\\"2000 - 3000\\\",\\\"3000 - 4000\\\",\\\"4000 - 5000\\\",\\\"5000+\\\"]\"}')),
    FilterColumnStruct.fromSerializableMap(jsonDecode(
        '{\"key\":\"brand\",\"value\":\"Brand\",\"options\":\"[\\\"Apple\\\",\\\"Samsung\\\",\\\"Google\\\",\\\"Motorola\\\",\\\"Vivo\\\",\\\"Oppo\\\",\\\"Nothing\\\",\\\"Poco\\\",\\\"OnePlus\\\",\\\"Xiaomi\\\"]\"}')),
    FilterColumnStruct.fromSerializableMap(jsonDecode(
        '{\"key\":\"color\",\"value\":\"Color\",\"options\":\"[\\\"White\\\",\\\"Green\\\",\\\"Blue\\\",\\\"Yellow\\\",\\\"Black\\\",\\\"Red\\\",\\\"Purple\\\"]\"}')),
    FilterColumnStruct.fromSerializableMap(jsonDecode(
        '{\"key\":\"storage\",\"value\":\"Storage\",\"options\":\"[\\\"64 GB\\\",\\\"128 GB\\\",\\\"256 GB\\\",\\\"512 GB\\\",\\\"1 TB\\\"]\"}')),
    FilterColumnStruct.fromSerializableMap(jsonDecode(
        '{\"key\":\"ram\",\"value\":\"RAM\",\"options\":\"[\\\"4 GB\\\",\\\"6 GB\\\",\\\"8 GB\\\",\\\"12 GB\\\",\\\"16 GB\\\"]\"}')),
    FilterColumnStruct.fromSerializableMap(jsonDecode(
        '{\"key\":\"battery\",\"value\":\"Battery\",\"options\":\"[\\\"3000 - 4000 mAh\\\",\\\"4000 - 5000 mAh\\\",\\\"5000 - 6000 mAh\\\",\\\"6000+ mAh\\\"]\"}')),
    FilterColumnStruct.fromSerializableMap(jsonDecode(
        '{\"key\":\"camera\",\"value\":\"Camera\",\"options\":\"[\\\"12 MP\\\",\\\"48 MP\\\",\\\"64 MP\\\",\\\"108 MP\\\"]\"}')),
    FilterColumnStruct.fromSerializableMap(jsonDecode(
        '{\"key\":\"display\",\"value\":\"Display\",\"options\":\"[\\\"LCD\\\",\\\"AMOLED\\\",\\\"Super AMOLED\\\",\\\"OLED\\\"]\"}')),
    FilterColumnStruct.fromSerializableMap(jsonDecode(
        '{\"key\":\"processor\",\"value\":\"Processor\",\"options\":\"[\\\"Snapdragon 8 Gen 2\\\",\\\"Snapdragon 8 Gen 1\\\",\\\"Apple A16 Bionic\\\",\\\"Apple A15 Bionic\\\",\\\"MediaTek Dimensity 9000\\\",\\\"Exynos 2200\\\"]\"}')),
    FilterColumnStruct.fromSerializableMap(jsonDecode(
        '{\"key\":\"refresh_rate\",\"value\":\"Refresh Rate\",\"options\":\"[\\\"60 Hz\\\",\\\"90 Hz\\\",\\\"120 Hz\\\",\\\"144 Hz\\\"]\"}')),
    FilterColumnStruct.fromSerializableMap(jsonDecode(
        '{\"key\":\"os\",\"value\":\"Operating System\",\"options\":\"[\\\"Android\\\",\\\"iOS\\\"]\"}')),
    FilterColumnStruct.fromSerializableMap(jsonDecode(
        '{\"key\":\"network\",\"value\":\"Network\",\"options\":\"[\\\"4G LTE\\\",\\\"5G\\\",\\\"Wi-Fi 6\\\"]\"}')),
    FilterColumnStruct.fromSerializableMap(jsonDecode(
        '{\"key\":\"sim\",\"value\":\"SIM Type\",\"options\":\"[\\\"Single SIM\\\",\\\"Dual SIM\\\",\\\"eSIM\\\"]\"}')),
    FilterColumnStruct.fromSerializableMap(jsonDecode(
        '{\"key\":\"charging\",\"value\":\"Charging\",\"options\":\"[\\\"Fast Charging\\\",\\\"Wireless Charging\\\",\\\"Reverse Wireless Charging\\\",\\\"30W\\\",\\\"65W\\\",\\\"100W+\\\"]\"}')),
    FilterColumnStruct.fromSerializableMap(jsonDecode(
        '{\"key\":\"weight\",\"value\":\"Weight\",\"options\":\"[\\\"150 - 170 g\\\",\\\"170 - 190 g\\\",\\\"190 - 210 g\\\",\\\"210+ g\\\"]\"}')),
    FilterColumnStruct.fromSerializableMap(jsonDecode(
        '{\"key\":\"build_material\",\"value\":\"Build Material\",\"options\":\"[\\\"Plastic\\\",\\\"Glass\\\",\\\"Aluminum\\\",\\\"Ceramic\\\"]\"}'))
  ];
  List<FilterColumnStruct> get SmartPhoneFilter => _SmartPhoneFilter;
  set SmartPhoneFilter(List<FilterColumnStruct> value) {
    _SmartPhoneFilter = value;
    prefs.setStringList(
        'ff_SmartPhoneFilter', value.map((x) => x.serialize()).toList());
  }

  void addToSmartPhoneFilter(FilterColumnStruct value) {
    SmartPhoneFilter.add(value);
    prefs.setStringList('ff_SmartPhoneFilter',
        _SmartPhoneFilter.map((x) => x.serialize()).toList());
  }

  void removeFromSmartPhoneFilter(FilterColumnStruct value) {
    SmartPhoneFilter.remove(value);
    prefs.setStringList('ff_SmartPhoneFilter',
        _SmartPhoneFilter.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSmartPhoneFilter(int index) {
    SmartPhoneFilter.removeAt(index);
    prefs.setStringList('ff_SmartPhoneFilter',
        _SmartPhoneFilter.map((x) => x.serialize()).toList());
  }

  void updateSmartPhoneFilterAtIndex(
    int index,
    FilterColumnStruct Function(FilterColumnStruct) updateFn,
  ) {
    SmartPhoneFilter[index] = updateFn(_SmartPhoneFilter[index]);
    prefs.setStringList('ff_SmartPhoneFilter',
        _SmartPhoneFilter.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSmartPhoneFilter(int index, FilterColumnStruct value) {
    SmartPhoneFilter.insert(index, value);
    prefs.setStringList('ff_SmartPhoneFilter',
        _SmartPhoneFilter.map((x) => x.serialize()).toList());
  }

  List<WordItemStruct> _wordsList = [
    WordItemStruct.fromSerializableMap(
        jsonDecode('{\"word\":\"Hello World\",\"meaning\":\"Hello World\"}'))
  ];
  List<WordItemStruct> get wordsList => _wordsList;
  set wordsList(List<WordItemStruct> value) {
    _wordsList = value;
  }

  void addToWordsList(WordItemStruct value) {
    wordsList.add(value);
  }

  void removeFromWordsList(WordItemStruct value) {
    wordsList.remove(value);
  }

  void removeAtIndexFromWordsList(int index) {
    wordsList.removeAt(index);
  }

  void updateWordsListAtIndex(
    int index,
    WordItemStruct Function(WordItemStruct) updateFn,
  ) {
    wordsList[index] = updateFn(_wordsList[index]);
  }

  void insertAtIndexInWordsList(int index, WordItemStruct value) {
    wordsList.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
