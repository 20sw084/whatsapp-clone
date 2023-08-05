import 'package:flutter/material.dart';
import '../screens/chat_screen.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.archive_outlined),
            title: Text("Archived"),
            trailing: Text("6"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 18,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: ListTile(
                    leading: GestureDetector(
                      onTap: () {
                        print("Circle");
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                          "https://th.bing.com/th/id/R.8e2c571ff125b3531705198a15d3103c?rik=ZS6L%2fgS20ouPXA&pid=ImgRaw&r=0",
                        ),
                      ),
                    ),
                    title: Text("Mr. Smith"),
                    subtitle: Text("Hey: I m on Whatsapp"),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ChatScreen(
                          title: 'Mr. Smith',
                          imgURL:
                              'https://th.bing.com/th/id/R.8e2c571ff125b3531705198a15d3103c?rik=ZS6L%2fgS20ouPXA&pid=ImgRaw&r=0',
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
