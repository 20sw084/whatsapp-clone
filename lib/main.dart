import 'package:flutter/material.dart';                
import 'package:lab_02/widgets/call_widget.dart';
import 'package:lab_02/widgets/chat_widget.dart';
import 'package:lab_02/widgets/group_widget.dart';
import 'package:lab_02/widgets/status_widget.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // int _tabs = 4;
    final List _tabs = [Icons.group, 'Chats', 'Status', 'Calls'];
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: _tabs.length,
        child: SafeArea(
          child: Builder(
            builder: (context) {
              final _tabIndex = DefaultTabController.of(context).index;
              return Scaffold(
                // appBar: AppBar(
                //   title: Text("Whatsapp"),
                //   actions: [
                //     IconButton(
                //       onPressed: null,
                //       icon: Icon(Icons.camera_alt_outlined),
                //     ),
                //     IconButton(
                //       onPressed: null,
                //       icon: Icon(Icons.search),
                //     ),
                //     IconButton(
                //       onPressed: null,
                //       icon: Icon(Icons.more_vert),
                //     ),
                //   ],
                //   bottom: TabBar(
                //     tabs: [
                //       // Tab(
                //       //   child: Icon(Icons.group),
                //       // ),
                //       Icon(Icons.group),
                //       Tab(
                //         child: Text("Chats"),
                //       ),
                //       Tab(
                //         child: Text("Status"),
                //       ),
                //       Tab(
                //         child: Text("Calls"),
                //       ),
                //     ],
                //   ),
                // ),
                body: NestedScrollView(
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return <Widget>[
                      SliverAppBar(
                        title: Text(
                          "Whatsapp",
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        actions: [
                          IconButton(
                            onPressed: null,
                            icon: Icon(Icons.camera_alt_outlined),
                          ),
                          (_tabIndex == 0)
                              ? Container()
                              : IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.search,
                                  ),
                                ),
                          PopupMenuButton<int>(
                                itemBuilder: (context) => [
                                  PopupMenuItem(
                                    value: 1,
                                    child: Text("New Group"),
                                  ),
                                  PopupMenuItem(
                                    value: 2,
                                    child: Text("New Broadcast"),
                                  ),
                                  PopupMenuItem(
                                    value: 3,
                                    child: Text("Linked devices"),
                                  ),
                                  PopupMenuItem(
                                    value: 4,
                                    child: Text("Starred messages"),
                                  ),
                                  PopupMenuItem(
                                    value: 5,
                                    child: Text("Settings"),
                                  ),
                                ],
                              ),
                        ],
                        floating: true,
                        pinned: true,
                        snap:
                            true, // <--- this is required if I want the application bar to show when I scroll up
                        bottom: TabBar(
                          isScrollable: true,
                          tabs: [
                            // Tab(
                            //   child: Icon(Icons.group),
                            // ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.04,
                              child: Tab(
                                child: Icon(
                                  Icons.group,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.21,
                              child: Tab(
                                child: Text(
                                  "Chats",
                                  style: TabBarStyle,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.21,
                              child: Tab(
                                child: Text(
                                  "Status",
                                  style: TabBarStyle,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.21,
                              child: Tab(
                                child: Text(
                                  "Calls",
                                  style: TabBarStyle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ];
                  },
                  body: TabBarView(
                    children: [
                      GroupWidget(),
                      ChatWidget(),
                      StatusWidget(),
                      CallWidget(),
                    ],
                  ),
                ),
                floatingActionButton: (_tabIndex == 0)
                    ? Container()
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          (_tabIndex == 1 || _tabIndex == 3
                              ? Container()
                              : Column(
                                  children: [
                                    Column(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional.bottomEnd,
                                          child: FloatingActionButton(
                                            onPressed: null,
                                            child: Icon(Icons.edit),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          Align(
                            alignment: AlignmentDirectional.bottomEnd,
                            child: FloatingActionButton(
                              onPressed: null,
                              child: Icon(
                                (_tabIndex == 1)
                                    ? Icons.message
                                    : (_tabIndex == 3
                                        ? Icons.call
                                        : Icons.camera_alt),
                              ),
                            ),
                          ),
                        ],
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

TextStyle TabBarStyle = TextStyle(
  fontSize: 17,
);
