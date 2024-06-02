import 'dart:convert';

import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../config/api.dart';
import '../../../model/model_profile.dart';
import 'package:http/http.dart' as http;

Future<String?> _retrieveToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('token');
}

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
}

class UserProfileName {
  Future<ProfileName> getProfileName(String token) async {
    try {
      final response = await http.get(
        Uri.parse(Api.userProfileName),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        return ProfileName.fromJson(responseData);
      } else {
        throw Exception(
            'Failed to load profile. Status code: ${response.statusCode}. Error message: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static final profileProvider = FutureProvider<ProfileName>((ref) async {
    final token = await _retrieveToken();
    if (token != null) {
      final userProfile = UserProfileName();
      return userProfile.getProfileName(token);
    } else {
      throw Exception('User is not logged in');
    }
  });
}

class UpdatePasswordUser {
  Future<Profile> updatePassword(String token, String oldPassword,
      String newPassword, String retypePassword) async {
    try {
      final response = await http.put(Uri.parse(Api.userProfile), headers: {
        'Authorization': 'Bearer $token',
      }, body: {
        "name": "",
        "old_password": oldPassword,
        "new_password": newPassword,
        "retype_password": retypePassword
      });

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        return Profile.fromJson(responseData);
      } else {
        throw Exception(
            'Failed to load profile. Status code: ${response.statusCode}. Error message: ${response.reasonPhrase}');
      }
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }
}

final updatePasswordRepositoryProvider = Provider<UpdatePasswordUser>((ref) {
  return UpdatePasswordUser();
});

final updatePasswordProvider =
    FutureProvider.family<Profile, Map<String, String>>((ref, passwords) async {
  final repository = ref.read(updatePasswordRepositoryProvider);
  final token = await _retrieveToken();
  if (token != null) {
    return repository.updatePassword(
      token,
      passwords['oldPassword']!,
      passwords['newPassword']!,
      passwords['retypePassword']!,
    );
  } else {
    throw Exception('User is not logged in');
  }
});
