import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsappclone/pages/account_page.dart';
import 'package:whatsappclone/pages/num_verification_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[50],
          elevation: 0,
        ),
        body: Column(
          children: [
            Center(
              child: Text(
                "Welcome to WhatsApp",
                style: GoogleFonts.montserrat(
                    color: Color.fromARGB(255, 29, 131, 119),
                    fontSize: 25,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/agree image.jpg'),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Read our "),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Text('. Tap Agree and continue to')
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "accept the ",
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Terms of Services',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 250,
              height: 35,
              color: Colors.green,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return AccountPage();
                  }));
                },
                child: Text(
                  "AGREE AND CONTINUE",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              "from",
              style: TextStyle(color: Colors.grey),
            ),
            Image.asset(
              "assets/meta-logo-12362.png",
              width: 100,
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
