import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'https://api.mr-corp.ca/api/';

  Future<http.Response> login(Map<String, String> bodyData) async {
    final Uri url = Uri.parse(baseUrl + 'login/');

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(bodyData),
    );

    return response;
  }
}
