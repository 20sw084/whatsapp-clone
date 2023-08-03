import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String title;
  final String imgURL;
  const ChatScreen({super.key, required this.title, required this.imgURL});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: Stack(
          children: [
            CircleAvatar(
              radius: 20,
              child: Image.network(imgURL),
            ),
            IconButton(
              iconSize: 25,
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
