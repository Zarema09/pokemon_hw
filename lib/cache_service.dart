import 'package:hive/hive.dart';
import 'dart:convert';

import 'package:path_provider/path_provider.dart';

class CacheService {
  static late Box _cacheBox;

  static Future<void> init() async {
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    _cacheBox = await Hive.openBox('akatsuki_cache');
  }

  static Future<void> saveData(List<dynamic> data) async {
    String jsonData = json.encode(data);
    await _cacheBox.put('akatsuki_data', jsonData);
  }

  static List<dynamic>? getData() {
    String? jsonData = _cacheBox.get('akatsuki_data');
    if (jsonData != null) {
      return json.decode(jsonData);
    }
    return null;
  }

  static Future<void> clearCache() async {
    await _cacheBox.clear();
  }
}
