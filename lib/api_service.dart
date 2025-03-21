import 'package:hive/hive.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'cache_service.dart';

class ApiService {
  final String apiUrl = "https://dattebayo-api.onrender.com/akatsuki";

  Future<List<dynamic>> fetchAkatsukiData() async {
    List<dynamic>? cachedData = CacheService.getData();
    if (cachedData != null) {
      return cachedData;
    }

    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      CacheService.saveData(data);
      return data;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
