import 'dart:convert';
import 'package:deely/core/services/api_service.dart';
import 'package:deely/presentation/screens/auth/model/user_model.dart';
import 'package:deely/presentation/screens/landing/landing.dart';
import 'package:flutter/material.dart';

class LoginController {
  final ApiService _apiService = ApiService();
  final String deviceId = 'dcndjc89';

  Future<void> login(UserModel user, BuildContext context) async {
    Map<String, String> bodyData = {
      'email': user.email,
      'password': user.password,
      'device_id': deviceId,
    };

    try {
      final response = await _apiService.login(bodyData);
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        print('Login successful: $responseData');
        Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavBar()));
      } else {
        print('Login failed: ${response.body}');
        _showErrorSnackbar(context, 'Login failed, check your credentials.');
      }
    } catch (error) {
      print('Error: $error');
      _showErrorSnackbar(context, 'An error occurred. Please try again.');
    }
  }

  void _showErrorSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
}
