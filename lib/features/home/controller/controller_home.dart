import 'dart:convert';

import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../config/api.dart';
import '../../../model/model_profile.dart';
import 'package:http/http.dart' as http;

class UserProfile {
  Future<Profile> getProfile(String token) async {
    try {
      final response = await http.get(
        Uri.parse(Api.userProfile),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        print(responseData);
        return Profile.fromJson(responseData);
      } else {
        throw Exception(
            'Failed to load profile. Status code: ${response.statusCode}. Error message: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static final profileProvider = FutureProvider<Profile>((ref) async {
    final token = await _retrieveToken();
    if (token != null) {
      final userProfile = UserProfile();
      return userProfile.getProfile(token);
    } else {
      throw Exception('User is not logged in');
    }
  });
  static Future<String?> _retrieveToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }
}
