import 'dart:convert';

import 'package:bengkel_koding_mobile/model/model_course.dart';
import 'package:bengkel_koding_mobile/model/model_joined_classroom.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../config/api.dart';
import '../../../model/model_latest_assignment.dart';
import '../../../model/model_our_course.dart';
import 'package:http/http.dart' as http;

Future<String?> _retrieveToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('token');
}

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
}

class Course {
  Future<List<CourseModel>> getCourses(String token) async {
    try {
      final response = await http.get(
        Uri.parse(Api.listCourse),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        List<dynamic> data = responseData['data'];
        return data.map((json) => CourseModel.fromJson(json)).toList();
      } else {
        throw Exception(
            'Failed to load courses. Status code: ${response.statusCode}. Error message: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static final coursesProvider = FutureProvider<List<CourseModel>>((ref) async {
    final token = await _retrieveToken();
    if (token != null) {
      final listCoursew = Course();
      return listCoursew.getCourses(token);
    } else {
      throw Exception('User is not logged in');
    }
  });
}

class GetJoinedClassroom {
  Future<JoinedClassroom> getJoinedClassroom(String token) async {
    try {
      final response = await http.get(
        Uri.parse(Api.joinedClassroom),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        print(responseData);
        return JoinedClassroom.fromJson(responseData);
      } else {
        throw Exception(
            'Failed to load courses. Status code: ${response.statusCode}. Error message: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static final joinedClassroomProvider =
      FutureProvider<JoinedClassroom>((ref) async {
    final token = await _retrieveToken();
    if (token != null) {
      final joinedClassroom = GetJoinedClassroom();
      return joinedClassroom.getJoinedClassroom(token);
    } else {
      throw Exception('User is not logged in');
    }
  });
}

class GetLatesAssignment {
  Future<LatestAssignment> getLatestAssignment(String token) async {
    try {
      final response = await http.get(
        Uri.parse(Api.latestAssignment),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        return LatestAssignment.fromJson(responseData);
      } else {
        throw Exception(
            'Failed to load courses. Status code: ${response.statusCode}. Error message: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static final latestAssignmentProvider =
      FutureProvider<LatestAssignment>((ref) async {
    final token = await _retrieveToken();
    if (token != null) {
      final latesAssginment = GetLatesAssignment();
      return latesAssginment.getLatestAssignment(token);
    } else {
      throw Exception('User is not logged in');
    }
  });
}
