import 'dart:convert';
import 'package:http/http.dart' as http;

class Planet {
  final String name;

  const Planet({required this.name});

  static Planet fromJson(Map<String, dynamic> json) => Planet(
        name: json['name'],
      );
}

class PlanetApi {
  static Future<List<Planet>> getUserSuggestions(String query) async {
    final url = Uri.parse('https://api-solar-system.herokuapp.com/planets');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List planetas = json.decode(response.body);

      return planetas.map((json) => Planet.fromJson(json)).where((planet) {
        final nameLower = planet.name;
        final queryLower = query;

        return nameLower.contains(queryLower);
      }).toList();
    } else {
      throw Exception();
    }
  }
}