import "package:flutter/material.dart";
import 'package:hack_tues_app/models/chat_item.dart';
import 'package:hack_tues_app/style.dart';

class ChatTextMsg extends StatelessWidget {
  final ChatItem item;

  ChatTextMsg(this.item);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: item.status == "Send"
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (item.status == "Receive")
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/avatar2.jpg"),
            radius: 25.0,
          ),
        Flexible(
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: item.status == "Send" ? selectedTabColor : planetCardColor,
              borderRadius: item.status == "Send"
                  ? BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    )
                  : BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
            ),
            child: Text(
              item.text,
              style: TextStyle(
                color: lightMainFontColor,
                fontFamily: fontName,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
