import 'package:flutter/material.dart';
import 'package:lab_02/screens/user_screen.dart';

import '../models/message.dart';

class ChatScreen extends StatelessWidget {
  final String title;
  final String imgURL;
  const ChatScreen({super.key, required this.title, required this.imgURL});

  @override
  Widget build(BuildContext context) {
    final List<Message> messages = [
      Message(
          text: "Hello My Friend.",
          date: DateTime.now(),
          isSentByMe: true,
          isSeen: true),
      Message(
          text: "Hi My Friend.",
          date: DateTime.now(),
          isSentByMe: false,
          isSeen: true),
      Message(
          text: "See u soon.",
          date: DateTime.now(),
          isSentByMe: false,
          isSeen: true),
      Message(
          text: "How are you?.",
          date: DateTime.now(),
          isSentByMe: true,
          isSeen: true),
      Message(
          text: "Nice.", date: DateTime.now(), isSentByMe: true, isSeen: true),
      Message(
          text: "Better.",
          date: DateTime.now(),
          isSentByMe: false,
          isSeen: true),
      Message(
          text: "Fine.", date: DateTime.now(), isSentByMe: true, isSeen: true),
      Message(
          text:
              "awesome. awesome. awesome. awesome. awesome. awesome. awesome. awesome. awesome. awesome. awesome. awesome. awesome. awesome. awesome. ",
          date: DateTime.now(),
          isSentByMe: false,
          isSeen: true),
      Message(
          text: "Perfect.",
          date: DateTime.now(),
          isSentByMe: true,
          isSeen: true),
      Message(
          text: "Good.", date: DateTime.now(), isSentByMe: false, isSeen: true),
      Message(
          text: "Nice.", date: DateTime.now(), isSentByMe: true, isSeen: true),
      Message(
          text: "Better.",
          date: DateTime.now(),
          isSentByMe: false,
          isSeen: false),
      Message(
          text: "Fine.", date: DateTime.now(), isSentByMe: true, isSeen: false),
      Message(
          text:
              "awesome. awesome. awesome. awesome. awesome. awesome. awesome. awesome. awesome. awesome. awesome. awesome. awesome. awesome. awesome. awesome. ",
          date: DateTime.now(),
          isSentByMe: true,
          isSeen: false),
      Message(
          text: "Perfect.",
          date: DateTime.now(),
          isSentByMe: true,
          isSeen: false),
      Message(
          text: "Good.",
          date: DateTime.now(),
          isSentByMe: false,
          isSeen: false),
      Message(
          text: "Bye, My Friend.",
          date: DateTime.now(),
          isSentByMe: true,
          isSeen: false),
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
          title: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => UserScreen(
                    name: title,
                  ),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(
                  "last seen today at 5:22 pm",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
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
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      imgURL,
                    ),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.videocam),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.call),
            ),
            PopupMenuButton<int>(
              itemBuilder: (context) => [
                // popupmenu item 1
                PopupMenuItem(
                  value: 1,
                  child: Text("View contact"),
                ),
                // popupmenu item 2
                PopupMenuItem(
                  value: 2,
                  child: Text("Media, links, and docs"),
                ),
                // popupmenu item 3
                PopupMenuItem(
                  value: 3,
                  child: Text("Search"),
                ),
                // popupmenu item 4
                PopupMenuItem(
                  value: 4,
                  child: Text("Mute Notifications"),
                ),
                // popupmenu item 5
                PopupMenuItem(
                  value: 5,
                  child: Text("Disappearing messages"),
                ),
                // popupmenu item 6
                PopupMenuItem(
                  value: 6,
                  child: Text("Wallpaper"),
                ),
                // popupmenu item 7
                PopupMenuItem(
                  value: 7,
                  onTap: () {},
                  padding: EdgeInsets.zero,
                  child: PopupMenuButton(
                      child: Container(
                        // alignment: Alignment.center,
                        height: 48.0, //default height
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 17.0,top: 10.0,right: 10.0,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("More"),
                              Icon(Icons.arrow_right_sharp, color: Colors.black,),
                            ],
                          ),
                        ),
                      ),
                    itemBuilder: (context) => [
                      // popupmenu item 1
                      PopupMenuItem(
                        value: 1,
                        child: Text("Report"),
                      ),
                      // popupmenu item 2
                      PopupMenuItem(
                        value: 2,
                        child: Text("Block"),
                      ),
                      // popupmenu item 3
                      PopupMenuItem(
                        value: 3,
                        child: Text("Clear Chat"),
                      ),
                      // popupmenu item 4
                      PopupMenuItem(
                        value: 4,
                        child: Text("Export Chat"),
                      ),
                      // popupmenu item 5
                      PopupMenuItem(
                        value: 5,
                        child: Text("Add shortcut"),
                      ),
                    ],
                  ),
                ),
              ],
              offset: Offset(0, 65),
              // elevation: 2,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                List<String> _sd = messages[index].date.toString().split(' ');
                List<String> _time24 = _sd.last.split(':');
                String _hours24 = _time24.first;
                bool _isPm = false;
                if (int.parse(_hours24) > 12) {
                  int _temp = int.parse(_hours24);
                  _temp -= 12;
                  _hours24 = _temp.toString();
                  _isPm = true;
                }
                String _mins = _time24.elementAt(1);
                // String _t = _sd.last;
                return Container(
                  padding: EdgeInsets.only(
                      left: (messages[index].isSentByMe) ? 14 : 50,
                      right: (messages[index].isSentByMe) ? 50 : 14,
                      top: 10,
                      bottom: 10),
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
                      child: Wrap(
                        verticalDirection: VerticalDirection.down,
                        alignment: WrapAlignment.end,
                        children: [
                          Text(
                            maxLines: 25,
                            messages[index].text,
                            style: TextStyle(fontSize: 15),
                          ),
                          Container(
                            padding: EdgeInsets.zero,
                            margin: EdgeInsets.only(
                              left: 20,
                            ),
                            //alignment: Alignment.bottomRight,
                            constraints: BoxConstraints(
                              maxWidth: 70,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "$_hours24:$_mins",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  (_isPm ? " pm" : " am"),
                                  style: TextStyle(fontSize: 12),
                                ),
                                (messages[index].isSentByMe)
                                    ? Container()
                                    : Icon(
                                        Icons.done_all,
                                        size: 12,
                                        color: (messages[index].isSeen)
                                            ? Colors.blue
                                            : Colors.black,
                                      ),
                              ],
                            ),
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
      ),
    );
  }
}
