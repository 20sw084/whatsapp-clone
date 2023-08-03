import 'package:flutter/material.dart';

class GroupWidget extends StatelessWidget {
  const GroupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      ListTile(
        leading: Icon(Icons.group),
        title: Text("New Community"),
      ),
      Expanded(
        child: ListView.builder(
          itemCount: 25,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  title: Text("DevConnect"),
                  leading: Icon(
                    Icons.group_add_sharp,
                  ),
                ),
                ListTile(
                  title: Text("DevConnect Group 1"),
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(
                      "https://th.bing.com/th/id/R.8e2c571ff125b3531705198a15d3103c?rik=ZS6L%2fgS20ouPXA&pid=ImgRaw&r=0",
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("Tapped");
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                      Text("View all"),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    ],
      );
  }
}
