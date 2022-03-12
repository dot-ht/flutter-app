import 'package:hack_tues_app/api/rest_api.dart';
import 'package:hack_tues_app/models/chat_item.dart';
import '../models/planet.dart';

class RestService {
  final RestApi api;

  RestService(this.api);

  Future<Planets> getPlanets() async {
    return await api.getPlanetData();
  }

  Future<ChatItem> getChat() async {
    return await api.getBotData();
  }
}
