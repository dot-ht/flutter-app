import 'package:hack_tues_app/models/planet.dart';

class ChatContent {
  final String answer;
  final String imgLink;

  ChatContent({
    this.answer,
    this.imgLink,
  });
}

class ChatItem {
  final String type;
  final String status;
  final String text;
  final String imgLink;
  final ChatContent content;

  ChatItem({
    this.type,
    this.status,
    this.text,
    this.imgLink,
    this.content,
  });

  static ChatItem fromJson(dynamic json) {
    return ChatItem(
      type: json['answer']['type'],
      // ADD THE REST OF THE THINGS
      content: ChatContent(
        answer: json['answer']['content']['answer_txt'],
        imgLink: json['answer']['content']['imgLink'],
      ),
    );
  }
}
