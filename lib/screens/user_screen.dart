import 'package:flutter/material.dart';
import '../models/media.dart';

// TODO: Date transformation to 13 January 2019 formate
// Todo: appbar work
// TODO: Compressing ListView.builder

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
    return SafeArea(
      child: Scaffold(
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
              offset: Offset(0, 65),
              // elevation: 2,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white10,
            child: Column(
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
                Divider(),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Align(
                            child: Text("Hey, I am on whatsapp."),
                            alignment: Alignment.topLeft),
                        Align(
                          child: Text(
                            DateTime.now().toString(),
                          ),
                          alignment: Alignment.topLeft,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(),
                Container(
                  color: Colors.white,
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
                            Text(
                              "Media, links, and docs",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "51",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 10,
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
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    15,
                                  ),
                                  child: Container(
                                    width: 100,
                                    child: Image.network(
                                      media[index].mediaURL,
                                      fit: BoxFit.fill,
                                    ),
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
                Divider(),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Mute notifications"),
                        leading: Icon(Icons.notifications),
                        trailing: Switch(
                          value: true,
                          onChanged: (bool value) {},
                        ),
                      ),
                      ListTile(
                        title: Text("Custom notifications"),
                        leading: Icon(Icons.music_note),
                      ),
                      ListTile(
                        title: Text("Media visibility"),
                        leading: Icon(Icons.image),
                      ),
                      ListTile(
                        title: Text("Starred Messages"),
                        leading: Icon(Icons.music_note),
                        trailing: Text("8"),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Encryption"),
                        leading: Icon(Icons.lock),
                        subtitle: Text(
                            "Messages and calls are end-to-end encrypted. Tap to verify."),
                      ),
                      ListTile(
                        title: Text("Disappearing Messages"),
                        leading: Icon(Icons.timer),
                        subtitle: Text("Off"),
                      ),
                      ListTile(
                        title: Text("Chat lock"),
                        leading: Icon(Icons.lock_outlined),
                        subtitle: Text("Off"),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "10 Groups in common",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text("Create group with $name"),
                        leading: CircleAvatar(
                          radius: 18.0,
                          child: Image.network(
                            "https://th.bing.com/th/id/R.8e2c571ff125b3531705198a15d3103c?rik=ZS6L%2fgS20ouPXA&pid=ImgRaw&r=0",
                          ),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        physics: ScrollPhysics(),
                        itemBuilder: (context, index) => ListTile(
                          title: Text("Friends Forever"),
                          subtitle: Text("S,D,F,G,H,J,K,L,W,E,R,T,Y,U,I,O,P"),
                          leading: CircleAvatar(
                            radius: 18.0,
                            backgroundColor: Colors.transparent,
                            child: Image.network(
                                "https://th.bing.com/th/id/R.8e2c571ff125b3531705198a15d3103c?rik=ZS6L%2fgS20ouPXA&pid=ImgRaw&r=0"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Block $name"),
                        textColor: Colors.red,
                        leading: Icon(
                          Icons.do_not_disturb_alt_outlined,
                          color: Colors.red,
                        ),
                      ),
                      ListTile(
                        title: Text("Report $name"),
                        textColor: Colors.red,
                        leading: Icon(
                          Icons.do_not_disturb_alt_outlined,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
