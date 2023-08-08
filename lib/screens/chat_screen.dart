import 'package:flutter/material.dart';

import '../models/message.dart';

class ChatScreen extends StatelessWidget {
  final String title;
  final String imgURL;
  const ChatScreen({super.key, required this.title, required this.imgURL});

  @override
  Widget build(BuildContext context) {
    final List<Message> messages = [
      Message(text: "Hello My Friend.", date: DateTime.now(), isSentByMe: true),
      Message(text: "Hi My Friend.", date: DateTime.now(), isSentByMe: false),
      Message(text: "See u soon.", date: DateTime.now(), isSentByMe: false),
      Message(text: "How are you?.", date: DateTime.now(), isSentByMe: true),
      Message(text: "Nice.", date: DateTime.now(), isSentByMe: true),
      Message(text: "Better.", date: DateTime.now(), isSentByMe: false),
      Message(text: "Fine.", date: DateTime.now(), isSentByMe: true),
      Message(text: "awesome.", date: DateTime.now(), isSentByMe: false),
      Message(text: "Perfect.", date: DateTime.now(), isSentByMe: true),
      Message(text: "Good.", date: DateTime.now(), isSentByMe: false),
      Message(text: "Nice.", date: DateTime.now(), isSentByMe: true),
      Message(text: "Better.", date: DateTime.now(), isSentByMe: false),
      Message(text: "Fine.", date: DateTime.now(), isSentByMe: true),
      Message(text: "awesome.", date: DateTime.now(), isSentByMe: false),
      Message(text: "Perfect.", date: DateTime.now(), isSentByMe: true),
      Message(text: "Good.", date: DateTime.now(), isSentByMe: false),
      Message(text: "Bye, My Friend.", date: DateTime.now(), isSentByMe: true),
    ];
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Message",
                        prefixIcon: IconButton(
                          color: Colors.grey,
                          icon: Icon(Icons.emoji_emotions_outlined),
                          onPressed: () {},
                        ),
                        suffixIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              color: Colors.grey,
                              icon: Icon(Icons.attachment),
                              onPressed: () {},
                            ),
                            IconButton(
                              color: Colors.grey,
                              icon: Icon(Icons.camera_alt),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  FloatingActionButton(
                      onPressed: null, child: Icon(Icons.mic_rounded)),
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          title: Text(title),
          leadingWidth: 70,
          leading: Stack(
            children: [
              Positioned(
                left: -5,
                child: IconButton(
                  iconSize: 24,
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 5,
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    imgURL,
                  ),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.videocam),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.call),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              List<String> _sd = messages[index].date.toString().split(' ');
              String _t = _sd.last;
              return Container(
                padding:
                    EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                child: Align(
                  alignment: (messages[index].isSentByMe
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: (messages[index].isSentByMe
                          ? Colors.grey.shade200
                          : Colors.green[200]),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          messages[index].text,
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          _t,
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
                // child: ListTile(
                //   title: Text(messages.elementAt(index).text),
                // ),
              );
            }),
      ),
    );
  }
}
