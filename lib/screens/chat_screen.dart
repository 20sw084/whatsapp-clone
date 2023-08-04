import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String title;
  final String imgURL;
  const ChatScreen({super.key, required this.title, required this.imgURL});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Message",
                    prefixIcon: IconButton(
                      color: Colors.grey,
                      icon: Icon(Icons.emoji_emotions_outlined),
                      onPressed: () {  },
                    ),
                    suffixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          color: Colors.grey,
                          icon: Icon(Icons.attachment),
                          onPressed: () {  },
                        ),
                        IconButton(
                          color: Colors.grey,
                          icon: Icon(Icons.camera_alt),
                          onPressed: () {  },
                        ),
                      ],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
              FloatingActionButton(onPressed: null, child: Icon(Icons.mic_rounded)),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(title),
        leading: Stack(
          children: [
            IconButton(
              iconSize: 25,
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(
                Icons.arrow_back,
              ),
            ),
            CircleAvatar(
              radius: 20,
              child: Image.network(imgURL),
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
    );
  }
}
