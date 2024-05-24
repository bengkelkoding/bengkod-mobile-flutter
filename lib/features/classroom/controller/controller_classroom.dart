import 'dart:convert';

import 'package:bengkel_koding_mobile/config/api.dart';
import 'package:bengkel_koding_mobile/model/model_classroom.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ClassroomService {
  Future<List<Classroom>> getAllClassroom(String token) async {
    try {
      final response = await http.get(Uri.parse(Api.listClassroom), headers: {
        'Authorization': 'Bearer $token',
      });
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        List<dynamic> data = responseData['data'];
        return data.map((e) => Classroom.fromJson(e)).toList();
      } else {
        throw Exception(
            'Failed to load classroom. Status code: ${response.statusCode}. Error message: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static final classroomProvider = FutureProvider<List<Classroom>>((ref) async {
    final token = await _retrieveToken();
    if (token != null) {
      final classroom = ClassroomService();
      return classroom.getAllClassroom(token);
    } else {
      throw Exception('User is not logged in');
    }
  });
  static Future<String?> _retrieveToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }
}
