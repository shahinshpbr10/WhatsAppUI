import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsappclone/pages/num_verification_page.dart';
import 'package:whatsappclone/pages/profile_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String dropdownvalue = 'United State';
  var items = [
    'United State',
    'India',
    'South America',
    'Newzland',
    'United Kingdom',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        title: Center(
          child: Text(
            "Enter your phone number",
            style: TextStyle(
              color: Color.fromARGB(255, 29, 131, 119),
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.grey,
              ))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Center(
            child: Text('WhatsApp will send an SMS Message to verify your'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('phone number.'),
              InkWell(
                onTap: () {},
                child: Text(
                  " What's my number",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 250,
            child: DropdownButton(
              underline: Container(
                color: Color.fromARGB(255, 29, 131, 119),
                height: 2,
                width: 250,
              ),
              alignment: Alignment.bottomCenter,
              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: Padding(
                padding: const EdgeInsets.only(left: 2.0),
                child: Icon(Icons.keyboard_arrow_down),
              ),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(items),
                  ),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: 70,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 29, 131, 119))),
                        prefixIcon: Icon(
                          Icons.add,
                          size: 15,
                        ),
                      ),
                    )),
                SizedBox(
                  width: 50,
                ),
                SizedBox(
                    width: 130,
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 29, 131, 119)))),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(child: Text("Carrier SMS charge may apply")),
          SizedBox(
            height: 100,
          ),
          Container(
              color: Color.fromARGB(255, 29, 131, 119),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return NumberPage();
                    }));
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(color: Colors.white),
                  )))
        ],
      ),
    );
  }
}
