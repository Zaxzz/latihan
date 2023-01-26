import 'package:flutter/material.dart';
import 'package:messenger_chat_ui/pages/chat_home_page.dart';
import 'package:messenger_chat_ui/pages/peoples.dart';
import 'package:messenger_chat_ui/setting.dart';


class MessengerChatUI extends StatefulWidget {
  const MessengerChatUI({Key? key}) : super(key: key);

  @override
  State<MessengerChatUI> createState() => _MessengerChatUIState();
}

class _MessengerChatUIState extends State<MessengerChatUI> {
  int _currentindex = 0;

  final tabs = [const ChatHomePage(), const PeoplesPage(), const Settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentindex,
          items: const [
            BottomNavigationBarItem(
              label: "Chats",
              icon: Icon(Icons.people_rounded),
            ),
            BottomNavigationBarItem(
              label: "People",
              icon: Icon(Icons.message_rounded),
            ),
            BottomNavigationBarItem(
              label: "Stories",
              icon: Icon(Icons.more_horiz),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
          selectedItemColor: Colors.black
        ),
        body: tabs[_currentindex]);
  }
}
