// Service: api_service.dart
// Handles all API communication.
// - http.get(url) sends a GET request to the API endpoint.
// - The status code check verifies whether the request succeeded.
// - jsonDecode(response.body) converts the raw JSON string into Dart data.

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class ApiService {
  static const String _baseUrl =
      'https://jsonplaceholder.typicode.com/users';
      

  /// Fetches the list of users from the JSONPlaceholder API.
  /// Throws an [Exception] if the request fails or returns a non-200 status.
  Future<List<UserModel>> fetchUsers() async {
    final url = Uri.parse(_baseUrl);
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception(
        'Failed to load users. Status code: ${response.statusCode}',
      );
    }

    final List<dynamic> data = jsonDecode(response.body);
    return data.map((json) => UserModel.fromJson(json)).toList();
  }
}
