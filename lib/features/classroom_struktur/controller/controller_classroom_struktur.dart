import 'dart:convert';
import 'package:bengkel_koding_mobile/config/api.dart';
import 'package:bengkel_koding_mobile/helper/app_listview_lecture.dart';
import 'package:bengkel_koding_mobile/model/model_listview_student.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../../model/model_listview_lecture.dart';

class ListViewLectureController {
  Future<List<ListViewLectureModel>> getAllListLecture(String token) async {
    try {
      final response = await http.get(
        Uri.parse(Api.listLecture),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        List<dynamic> data = responseData['data'];
        print(data);
        return data.map((json) => ListViewLectureModel.fromJson(json)).toList();
      } else {
        throw Exception(
            'Failed to load courses. Status code: ${response.statusCode}. Error message: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception('Failed to load courses: $e');
    }
  }

  static final listLectureProvider =
      FutureProvider<List<ListViewLectureModel>>((ref) async {
    final token = await _retrieveToken();
    if (token != null) {
      final listLectureController = ListViewLectureController();
      return listLectureController.getAllListLecture(token);
    } else {
      throw Exception('User is not logged in');
    }
  });

  static Future<String?> _retrieveToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }
}

class ListViewStudentController {
  Future<List<ListViewStudentModel>> getAllListStudent(String token) async {
    try {
      final response = await http.get(
        Uri.parse(Api.listStudent),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        List<dynamic> data = responseData['data'];
        print(data);
        return data.map((json) => ListViewStudentModel.fromJson(json)).toList();
      } else {
        throw Exception(
            'Failed to load courses. Status code: ${response.statusCode}. Error message: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception('Failed to load courses: $e');
    }
  }

  static final liststudentProvider =
      FutureProvider<List<ListViewStudentModel>>((ref) async {
    final token = await _retrieveToken();
    if (token != null) {
      final liststudentProvider = ListViewStudentController();
      return liststudentProvider.getAllListStudent(token);
    } else {
      throw Exception('User is not logged in');
    }
  });

  static Future<String?> _retrieveToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }
}
