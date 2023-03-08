import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/account_page.dart';
import 'package:whatsappclone/pages/chat_page.dart';
import 'package:whatsappclone/pages/home_page.dart';
import 'package:whatsappclone/pages/login_page.dart';
import 'package:whatsappclone/pages/num_verification_page.dart';
import 'package:whatsappclone/pages/profile_page.dart';
import 'package:whatsappclone/pages/splash_page.dart';

void main() {
  runApp(const WhatsAppClone());
}

class WhatsAppClone extends StatelessWidget {
  const WhatsAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
        indicatorColor: Colors.white,
        primaryColorDark: Color(0xFF128C7E),
        primaryIconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
