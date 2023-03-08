import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsappclone/pages/home_page.dart';
import 'package:whatsappclone/pages/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    gotoLogin();
    super.initState();
  }

  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Center(
            child: SizedBox(
                width: 200,
                child: Image.asset('assets/whatsapp-logo-png-2259.png')),
          ),
          Spacer(),
          Text("from"),
          Image.asset(
            "assets/meta-logo-12362.png",
            width: 100,
            height: 50,
          ),
        ],
      ),
    );
  }

  void dispose() {
    super.dispose();
  }

  Future<void> gotoLogin() async {
    await Future.delayed(
      Duration(seconds: 3),
    );
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => LoginPage()));
  }
}
