import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsappclone/pages/home_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        title: Center(
          child: Text(
            "Profile info",
            style: TextStyle(color: Color.fromARGB(255, 29, 131, 119)),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
              child:
                  Text("Please provide your name and optional profile photo")),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {},
            child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey[300],
                backgroundImage:
                    AssetImage("assets/icons8-registration-24.png")),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 60),
            child: TextField(
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 29, 131, 119))),
                    suffixIcon: InkWell(
                        onTap: () {}, child: Icon(Icons.emoji_emotions)))),
          ),
          SizedBox(
            height: 60,
          ),
          Center(
            child: Container(
                color: Color.fromARGB(255, 29, 131, 119),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Home();
                      }));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white),
                    ))),
          )
        ],
      ),
    );
  }
}
