import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFECE5DD),
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/profile pic.jpg"),
              radius: 40,
            ),
          ),
          backgroundColor: Color(0xff075e54),
          title: Column(
            children: [
              Text("Contact Name"),
              Text(
                'Active Time',
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.video_call),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.call),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(child: ListView()),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(
                      Icons.insert_emoticon,
                      size: 30.0,
                      color: Theme.of(context).hintColor,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type a message',
                        border: InputBorder.none,
                      ),
                    )),
                    Icon(Icons.attach_file,
                        size: 30.0, color: Theme.of(context).hintColor),
                    SizedBox(width: 8.0),
                    Icon(Icons.camera_alt,
                        size: 30.0, color: Theme.of(context).hintColor),
                    SizedBox(width: 8.0),
                    Padding(
                      padding: const EdgeInsets.only(right: 2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xff075e54),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.send,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
