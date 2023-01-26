import 'package:flutter/material.dart';
import 'package:messenger_chat_ui/messenger_chat_homepage.dart';
import 'package:messenger_chat_ui/pages/chat_home_page.dart';
import 'package:messenger_chat_ui/welcome.dart';
import 'package:messenger_chat_ui/phone.dart';
import 'package:messenger_chat_ui/verify.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'Custom Fonts',
       theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
       routes: {
        'phone': (context) => MyPhone(),
        'verify': (context) => MyVerify(),
        'chatui' :(context) => MessengerChatUI()
      },
     
      
      home: const Agreetermspage(),
    );
  }
}
