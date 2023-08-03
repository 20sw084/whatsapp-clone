import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                "https://th.bing.com/th/id/R.8e2c571ff125b3531705198a15d3103c?rik=ZS6L%2fgS20ouPXA&pid=ImgRaw&r=0",
              ),
            ),
            title: Text("My Status"),
            subtitle: Text("Tap to add status updates"),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Recent Updates"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                        "https://th.bing.com/th/id/R.8e2c571ff125b3531705198a15d3103c?rik=ZS6L%2fgS20ouPXA&pid=ImgRaw&r=0",
                      ),
                    ),
                    title: Text("Mr. Smith"),
                    subtitle: Text("33 minutes ago"),
                  ),
                  onTap: () {
                    print("Clicked");
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Viewed Updates"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                        "https://th.bing.com/th/id/R.8e2c571ff125b3531705198a15d3103c?rik=ZS6L%2fgS20ouPXA&pid=ImgRaw&r=0",
                      ),
                    ),
                    title: Text("Mr. Smith"),
                    subtitle: Text("33 minutes ago"),
                  ),
                  onTap: () {
                    print("Clicked");
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              children: [
                Icon(Icons.lock),
                Text("Your status updates are end-to-end encrypted"),
              ],
            ),
          ),
        ],
      );
  }
}
