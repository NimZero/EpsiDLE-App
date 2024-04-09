import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'https://epsidle.nimzero.fr/api';

  Future<Map<String, dynamic>> fetchCharacter() async {
    final response = await http.get(Uri.parse('$baseUrl/characters'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load character');
    }
  }


Future<Map<String, dynamic>> fetchAnecdotes() async {
    final response = await http.get(Uri.parse('$baseUrl/characters'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load character');
    }
  }

  Future<Map<String, dynamic>> fetchImages() async {
    final response = await http.get(Uri.parse('$baseUrl/characters'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load character');
    }
  }
  
}
