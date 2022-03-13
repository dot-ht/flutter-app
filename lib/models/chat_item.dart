class Suggestion {
  final String title;
  final String question;

  Suggestion({this.title, this.question});
}

class ChatItem {
  final String type;
  final String status;
  final String text;
  final String imgLink;
  final List<dynamic> suggestions;

  ChatItem({
    this.type,
    this.status,
    this.text,
    this.imgLink,
    this.suggestions,
  });

  static ChatItem fromJson(dynamic json) {
    return ChatItem(
      type: json['type'],
      status: 'Recieve',
      text: json['msg'],
      imgLink: json['img'],
      suggestions: json['suggestions'],
    );
  }
}
