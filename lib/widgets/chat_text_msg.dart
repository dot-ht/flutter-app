import "package:flutter/material.dart";

class ChatTextMsg extends StatelessWidget {
  final String status;
  final String message;
  final String avatar;

  ChatTextMsg(this.status, this.message, {this.avatar});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          status == "Send" ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (avatar != null) Avatar(avatar, 25.0),
        Flexible(
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: status == "Send"
                  ? Colors.indigo.shade100
                  : Colors.indigo.shade50,
              borderRadius: status == "Send"
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
            child: Text(message),
          ),
        ),
      ],
    );
  }
}

class Avatar extends StatelessWidget {
  final String image;
  final double size;

  Avatar(this.image, this.size);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size,
      backgroundImage: AssetImage(image),
    );
  }
}
