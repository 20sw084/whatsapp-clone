import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  final String name;
  const UserScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
