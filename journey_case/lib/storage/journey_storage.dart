import 'dart:convert';

import 'package:journey_case/model/journey_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class JourneyStorage {
  static Future<void> saveList(List<JourneyModel> journeys) async {
    final prefs = await SharedPreferences.getInstance();

    final list = journeys.map((e) => jsonEncode(e.toJson())).toList();

    await prefs.setStringList('journeys', list);
  }

  static Future<List<JourneyModel>> load() async {
    final prefs = await SharedPreferences.getInstance();

    final list = prefs.getStringList('journeys');

    if (list == null) return [];
    return list.map((e) => JourneyModel.fromJson(jsonDecode(e))).toList();
  }
}
