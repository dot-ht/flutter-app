import "package:flutter/material.dart";
import 'package:hack_tues_app/api/rest_api.dart';
import 'package:hack_tues_app/models/chat_item.dart';
import 'package:hack_tues_app/services/rest_service.dart';
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
  final _restServices = RestService(RestApi());
  final List<ChatItem> items = [];

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  void newPost() async {
    final responce = await _restServices.getChat(textController.text);
    setState(() {
      items.add(
        ChatItem(
          status: "Send",
          type: "str",
          text: textController.text,
        ),
      );
    });
    setState(() {
      items.add(
        ChatItem(
          status: "Receive",
          type: responce.type,
          text: responce.text,
          imgLink: responce.imgLink,
          suggestions: responce.suggestions,
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
        title: Text("todbot"),
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
                    itemCount: items.length,
                    controller: scrollController,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      print(index);
                      ChatItem post = items[index];
                      if (post.type == "str") {
                        return ChatTextMsg(post);
                      } else if (post.type == "img") {
                        return ChatImageMsg(post);
                      } else {
                        return Column(
                          children: [
                            ChatTextMsg(
                              ChatItem(
                                type: post.type,
                                status: post.status,
                                text: post.text,
                              ),
                            ),
                            ChatImageMsg(
                              ChatItem(
                                type: post.type,
                                status: post.status,
                                imgLink: post.imgLink,
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
                  controller: textController,
                  style: TextStyle(color: lightMainFontColor),
                  decoration: InputDecoration(
                    hintText: "Type your message...",
                    hintStyle: TextStyle(
                      color: lightMainFontColor,
                      fontFamily: fontName,
                    ),
                    suffixIcon: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.purple[500],
                      ),
                      margin:
                          EdgeInsets.only(right: 5.0, top: 5.0, bottom: 3.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.send_rounded,
                          color: lightMainFontColor,
                          size: 24.0,
                        ),
                        onPressed: newPost,
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
