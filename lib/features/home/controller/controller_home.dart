import 'dart:convert';

import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../config/api.dart';
import '../../../model/model_our_course.dart';
import 'package:http/http.dart' as http;

class AllCourses {
  Future<List<OurCourses>> getAllCourses(String token) async {
    try {
      final response = await http.get(
        Uri.parse(Api.allCourses),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        List<dynamic> data = responseData['data'];
        print(data);
        return data.map((json) => OurCourses.fromJson(json)).toList();
      } else {
        throw Exception(
            'Failed to load courses. Status code: ${response.statusCode}. Error message: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static final allCoursesProvider =
      FutureProvider<List<OurCourses>>((ref) async {
    final token = await _retrieveToken();
    if (token != null) {
      final allCourses = AllCourses();
      return allCourses.getAllCourses(token);
    } else {
      throw Exception('User is not logged in');
    }
  });
  static Future<String?> _retrieveToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }
}
