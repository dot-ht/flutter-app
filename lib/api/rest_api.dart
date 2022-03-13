import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:hack_tues_app/models/planet.dart';
import 'package:hack_tues_app/models/chat_item.dart';

class RestApi {
  Future<List<Planet>> getPlanetData() async {
    final response =
        await http.get(Uri.parse("http://137.184.227.30:5000/planets/"));
    List<Planet> planets = parseResponse(response.body);
    return planets;
  }

  Future<ChatItem> getBotData(text) async {
    var map = Map<String, dynamic>();
    map['input'] = text;
    final response = await http.post(
      Uri.parse("http://137.184.227.30:5000/chat/"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(map),
    );
    return ChatItem.fromJson(jsonDecode(response.body));
  }

  static List<Planet> parseResponse(String responseBody) {
    List<dynamic> parses = jsonDecode(responseBody);
    return parses.map<Planet>((json) => Planet.fromJson(json)).toList();
  }
}
