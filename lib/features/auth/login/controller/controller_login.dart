import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../../../config/api.dart';
import '../models/model_user.dart';

final authProvider = StateNotifierProvider<AuthController, AuthState>((ref) {
  return AuthController();
});

class AuthState {
  final User? user;
  final bool isLoading;
  final String? errorMessage;

  AuthState({this.user, this.isLoading = false, this.errorMessage});
}

class AuthController extends StateNotifier<AuthState> {
  AuthController() : super(AuthState());

  Future<void> login(String email, String password) async {
    state = AuthState(isLoading: true);

    try {
      final response = await http.post(
        Uri.parse(Api.login),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'email': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        state = AuthState(user: User.fromJson(responseData));
        print(responseData);
      } else {
        state = AuthState(errorMessage: 'Login failed');
      }
    } catch (e) {
      state = AuthState(errorMessage: 'An error occurred');
    }
  }
}
