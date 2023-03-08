import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsappclone/pages/chat_page.dart';

class Home extends StatelessWidget {
  final _tabs = <Widget>[
    Tab(
      icon: Icon(Icons.camera_alt),
    ),
    Tab(
      text: "Chats",
    ),
    Tab(
      text: 'Status',
    ),
    Tab(
      text: 'Calls',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075e54),
          title: Text("WhatsApp"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
          bottom: TabBar(tabs: _tabs),
        ),
        body: TabBarView(children: <Widget>[
          Text('camera'),
          ChatList(),
          StatusList(),
          CallPage(),
        ]),
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // itemCount: , <-- Normally we put the data array's length.
      itemBuilder: (context, index) {
        return SizedBox(
          height: 50,
          child: ListTile(
            title: Text(
              'Contact $index',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Message Display Here"),
            trailing: Text("$index:00AM"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ChatPage();
              }));
            },
            leading: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/profile pic.jpg')),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemCount: 100,
    );
  }
}

class StatusList extends StatefulWidget {
  const StatusList({super.key});

  @override
  State<StatusList> createState() => _StatusListState();
}

class _StatusListState extends State<StatusList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/profile pic.jpg"),
                      radius: 25,
                    ),
                    Positioned(
                      top: 25,
                      left: 25,
                      child: SizedBox(
                          width: 25,
                          height: 25,
                          child: FloatingActionButton(
                            backgroundColor: Color(0xff075e54),
                            onPressed: () {},
                            child: Icon(Icons.add),
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Status",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text("Tap to add status update")
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Recent Updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                    ),
                    title: Text(
                      "Contact Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Time here"),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemCount: 50),
          ),
        ],
      ),
    );
  }
}

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
              ),
              title: Text(
                'Create Call Link',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
