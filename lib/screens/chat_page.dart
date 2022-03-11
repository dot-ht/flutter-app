import "package:flutter/material.dart";
import 'package:hack_tues_app/models/chat_item.dart';
import 'package:hack_tues_app/widgets/chat_text_msg.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final scrollController = ScrollController();
  final textController = TextEditingController();
  final List<ChatItem> items = [];

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  void click() {
    items.add(ChatItem(status: "Send", text: textController.text));
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      curve: Curves.easeOut,
      duration: Duration(milliseconds: 300),
    );
    textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Chat Bot"),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: this.items.length,
                    controller: scrollController,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      ChatItem post = this.items[index];
                      if (post.type == "TEXT") {
                        return ChatTextMsg(post.status, post.text);
                      } else if (post.type == "IMG") {
                        return Container();
                      } else {
                        return Container();
                      }
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 120,
              ),
            ],
          ),
          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 120,
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                color: Colors.white,
                child: TextField(
                  controller: textController,
                  decoration: InputDecoration(
                    hintText: "Type your message...",
                    suffixIcon: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.indigo,
                      ),
                      //padding: EdgeInsets.all(14.0),
                      margin:
                          EdgeInsets.only(right: 5.0, top: 5.0, bottom: 3.0),
                      child: IconButton(
                        onPressed: click,
                        icon: Icon(
                          Icons.send_rounded,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.blueGrey[50],
                    labelStyle: TextStyle(fontSize: 12),
                    contentPadding: EdgeInsets.all(20),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// children: [
//                       ChatTextMsg("Send",
//                           "Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum.."),
//                       ChatTextMsg("Reseiver", "Hello",
//                           avatar: "assets/images/avatar.jpg"),
//                       ChatTextMsg("Send",
//                           "Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum.."),
//                       ChatTextMsg(
//                         "Reseiver",
//                         "Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum..Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum..Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum..",
//                         avatar: "assets/images/avatar.jpg",
//                       ),
//                       ChatTextMsg("Send",
//                           "Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum.."),
//                       ChatTextMsg("Reseiver", "Hello",
//                           avatar: "assets/images/avatar.jpg"),
//                       ChatTextMsg("Send",
//                           "Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum.."),
//                       ChatTextMsg(
//                         "Reseiver",
//                         "Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum..Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum..Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum..",
//                         avatar: "assets/images/avatar.jpg",
//                       ),
//                       ChatTextMsg(
//                         "Reseiver",
//                         "a",
//                         avatar: "assets/images/avatar.jpg",
//                       ),
//                     ],
//                   ),