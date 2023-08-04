import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChatScreen extends StatelessWidget {
  final String title;
  final String imgURL;
  const ChatScreen({super.key, required this.title, required this.imgURL});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: Container(
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
      ),
    );
  }
}
