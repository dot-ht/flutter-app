import "package:flutter/material.dart";
import 'package:hack_tues_app/models/chat_item.dart';
import 'package:hack_tues_app/style.dart';
import 'package:hack_tues_app/widgets/chat_image_msg.dart';
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

  void newPost() {
    this.setState(() {
      items.add(
        ChatItem(
          status: "Receive",
          type: "BOTH",
          content: ChatContent(
            answer: textController.text,
            imgLink:
                "https://img.freepik.com/free-photo/vertical-shot-narrow-alley-venice-italy_181624-45463.jpg",
          ),
          text: textController.text,
          imgLink:
              "https://img.freepik.com/free-photo/vertical-shot-narrow-alley-venice-italy_181624-45463.jpg",
        ),
      );
    });
    scrollController.jumpTo(scrollController.position.maxScrollExtent);
    FocusScope.of(context).unfocus();
    textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Todbot"),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 25.0, right: 25.0),
                  color: backgroundColor,
                  child: ListView.builder(
                    itemCount: this.items.length,
                    controller: scrollController,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      ChatItem post = this.items[index];
                      if (post.type == "TEXT") {
                        return ChatTextMsg(post);
                      } else if (post.type == "IMG") {
                        return ChatImageMsg(post);
                      } else {
                        return Column(
                          children: [
                            ChatTextMsg(
                              ChatItem(
                                type: post.type,
                                status: post.status,
                                text: post.content.answer,
                              ),
                            ),
                            ChatImageMsg(
                              ChatItem(
                                type: post.type,
                                status: post.status,
                                imgLink: post.content.imgLink,
                              ),
                            ),
                          ],
                        );
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
                color: backgroundColor,
                child: TextField(
                  controller: this.textController,
                  style: TextStyle(color: lightMainFontColor),
                  decoration: InputDecoration(
                    hintText: "Type your message...",
                    hintStyle: TextStyle(color: lightMainFontColor),
                    suffixIcon: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.purple[500],
                      ),
                      //padding: EdgeInsets.all(14.0),
                      margin:
                          EdgeInsets.only(right: 5.0, top: 5.0, bottom: 3.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.send_rounded,
                          color: lightMainFontColor,
                          size: 24.0,
                        ),
                        onPressed: this.newPost,
                      ),
                    ),
                    filled: true,
                    fillColor: planetCardColor,
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
