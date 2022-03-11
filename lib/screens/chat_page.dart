import "package:flutter/material.dart";
import 'package:hack_tues_app/widgets/chat_text_msg.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
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
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      ChatTextMsg("Send",
                          "Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum.."),
                      ChatTextMsg("Reseiver", "Hello",
                          avatar: "assets/icons/avatar.jpg"),
                      ChatTextMsg("Send",
                          "Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum.."),
                      ChatTextMsg(
                        "Reseiver",
                        "Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum..Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum..Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum..",
                        avatar: "assets/icons/avatar.jpg",
                      ),
                      ChatTextMsg("Send",
                          "Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum.."),
                      ChatTextMsg("Reseiver", "Hello",
                          avatar: "assets/icons/avatar.jpg"),
                      ChatTextMsg("Send",
                          "Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum.."),
                      ChatTextMsg(
                        "Reseiver",
                        "Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum..Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum..Zdrasti drugario komunist! Kak sme dnes v tozi cherven den? She pada li kapitala? Lorem Ipsum.. Lorem Ipsum..Lorem Ipsum..Lorem Ipsum..",
                        avatar: "assets/icons/avatar.jpg",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 120,
              )
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
                  decoration: InputDecoration(
                    hintText: 'Type your message...',
                    suffixIcon: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.indigo),
                      padding: EdgeInsets.all(14),
                      child: Icon(
                        Icons.send_rounded,
                        color: Colors.white,
                        size: 28,
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
