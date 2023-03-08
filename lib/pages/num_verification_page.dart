import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsappclone/pages/profile_page.dart';

class NumberPage extends StatefulWidget {
  const NumberPage({super.key});

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  void initState() {
    super.initState();
    goToAcPage(context);
  }

  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        title: Center(
          child: Text(
            "Verify XXXXXXXXX",
            style: TextStyle(color: Color.fromARGB(255, 29, 131, 119)),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color: Colors.grey,
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(child: Text("Waiting to automatically detect an SMS sent to")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "XXXXXXXXXX .",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Wrong number?",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 150,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "        -   -   -   -   -   - ",
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 29, 131, 119)))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Enter 6-digit code"),
          SizedBox(
            height: 120,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.message,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(onTap: () {}, child: Text("Resend SMS")),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Text("0:59"),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Icon(
                  Icons.call,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(onTap: () {}, child: Text("Call me"))
              ],
            ),
          )
        ],
      ),
    );
  }

  void dispose() {
    super.dispose();
  }
}

Future<void> goToAcPage(BuildContext context) async {
  await Future.delayed(
    Duration(seconds: 3),
  );
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (ctx) => ProfilePage()));
}
