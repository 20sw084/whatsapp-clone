import 'package:flutter/material.dart';

class CallWidget extends StatelessWidget {
  const CallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.link),
              ),
              title: Text("Create call link"),
              subtitle: Text("Share a link for your Whatsapp call"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Recent"),
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
                      subtitle: Row(
                        children: [
                          Icon(Icons.arrow_forward_sharp),
                          Text("24 July, 3:14 pm"),
                        ],
                      ),
                      trailing: Icon(Icons.phone),
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
                  Text("Your personal calls are end-to-end encrypted"),
                ],
              ),
            ),
          ],
        );
  }
}
