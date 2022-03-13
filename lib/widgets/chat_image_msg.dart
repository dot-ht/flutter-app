import 'package:flutter/material.dart';
import 'package:hack_tues_app/models/chat_item.dart';

class ChatImageMsg extends StatelessWidget {
  final ChatItem item;

  ChatImageMsg(this.item);

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
            height: 200.0,
            margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
            padding: EdgeInsets.all(20.0),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
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
              image: DecorationImage(
                image: NetworkImage(item.imgLink),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
