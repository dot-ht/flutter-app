import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:hack_tues_app/models/planet.dart';
import 'package:hack_tues_app/models/chat_item.dart';

class RestApi {
  Future<Planets> getPlanetData() async {
    final uri = Uri.http('localhost:5000/', 'planets/');
    final response = await http.get(uri);

    return Planets.fromJson(jsonDecode(response.body));
  }

  Future<ChatItem> getBotData() async {
    // TODO change to https when hosted
    final uri = Uri.http('localhost:5000/', 'chat/');
    final response = await http.get(uri);

    return ChatItem.fromJson(jsonDecode(response.body));
  }
}
