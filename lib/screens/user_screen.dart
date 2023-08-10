import 'package:flutter/material.dart';

import '../models/media.dart';

class UserScreen extends StatelessWidget {
  final String name;
  const UserScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    List<Media> media = [
      Media(
        dt: DateTime.now(),
        mediaURL:
            "https://th.bing.com/th/id/OIP.Vt3kGu4X6WQlmH91GpJpzgHaFH?pid=ImgDet&rs=1",
        isSentByMe: true,
        type: "img",
      ),
      Media(
        dt: DateTime.now(),
        mediaURL:
            "https://th.bing.com/th/id/OIP.Vt3kGu4X6WQlmH91GpJpzgHaFH?pid=ImgDet&rs=1",
        isSentByMe: false,
        type: "img",
      ),
      Media(
        dt: DateTime.now(),
        mediaURL:
            "https://th.bing.com/th/id/OIP.Vt3kGu4X6WQlmH91GpJpzgHaFH?pid=ImgDet&rs=1",
        isSentByMe: true,
        type: "img",
      ),
      Media(
        dt: DateTime.now(),
        mediaURL:
            "https://th.bing.com/th/id/OIP.Vt3kGu4X6WQlmH91GpJpzgHaFH?pid=ImgDet&rs=1",
        isSentByMe: false,
        type: "img",
      ),
      Media(
        dt: DateTime.now(),
        mediaURL:
            "https://th.bing.com/th/id/OIP.Vt3kGu4X6WQlmH91GpJpzgHaFH?pid=ImgDet&rs=1",
        isSentByMe: true,
        type: "img",
      ),
      Media(
        dt: DateTime.now(),
        mediaURL:
            "https://th.bing.com/th/id/OIP.Vt3kGu4X6WQlmH91GpJpzgHaFH?pid=ImgDet&rs=1",
        isSentByMe: false,
        type: "img",
      ),
      Media(
        dt: DateTime.now(),
        mediaURL:
            "https://th.bing.com/th/id/OIP.Vt3kGu4X6WQlmH91GpJpzgHaFH?pid=ImgDet&rs=1",
        isSentByMe: true,
        type: "img",
      ),
      Media(
        dt: DateTime.now(),
        mediaURL:
            "https://th.bing.com/th/id/OIP.Vt3kGu4X6WQlmH91GpJpzgHaFH?pid=ImgDet&rs=1",
        isSentByMe: false,
        type: "img",
      ),
      Media(
        dt: DateTime.now(),
        mediaURL:
            "https://th.bing.com/th/id/OIP.Vt3kGu4X6WQlmH91GpJpzgHaFH?pid=ImgDet&rs=1",
        isSentByMe: true,
        type: "img",
      ),
      Media(
        dt: DateTime.now(),
        mediaURL:
            "https://th.bing.com/th/id/OIP.Vt3kGu4X6WQlmH91GpJpzgHaFH?pid=ImgDet&rs=1",
        isSentByMe: false,
        type: "img",
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              // popupmenu item 1
              PopupMenuItem(
                value: 1,
                // row has two child icon and text.
                child: Text("Add Participants"),
              ),
              // popupmenu item 2
              PopupMenuItem(
                value: 2,
                // row has two child icon and text
                child: Text("Change Subject"),
              ),
              // popupmenu item 3
              PopupMenuItem(
                value: 3,
                // row has two child icon and text
                child: Text("Group Settings"),
              ),
            ],
            offset: Offset(0, 100),
            elevation: 2,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "+92 310 4215646",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.chat,
                            size: 30,
                          ),
                          Text(
                            "Message",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.call,
                            size: 30,
                          ),
                          Text(
                            "Audio",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.video_camera_back,
                            size: 30,
                          ),
                          Text(
                            "Video",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              textDirection: TextDirection.ltr,
              children: [
                Text("Hey, I am on whatsapp."),
                Text(DateTime.now().toString()),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    left: 8.0,
                    right: 8.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Media, links, and docs"),
                      Row(
                        children: [
                          Text("51"),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                  ),
                  child: SizedBox(
                    height: 100,
                    child: ListView.builder(
                      itemCount: media.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width: 100,
                            child: Image.network(
                              media[index].mediaURL,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
