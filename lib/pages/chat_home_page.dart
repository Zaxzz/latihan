import 'package:flutter/material.dart';
import 'package:messenger_chat_ui/pages/chat_detail.dart';
import 'package:messenger_chat_ui/welcome.dart';
import 'package:messenger_chat_ui/pages/models/users_model.dart';
import 'package:messenger_chat_ui/widgets/chat_card.dart';

class ChatHomePage extends StatefulWidget {
  const ChatHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatHomePage> createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        actions: const [
       
          SizedBox(
            width: 15,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.add, color: Colors.black),
          )
        ],
        automaticallyImplyLeading: false,
        title: const Text(
          "Contacts",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            ChatSearchBarSection(),
            SizedBox(
              height: 10,
            ),
            
            ShowChatCard()
          ],
        ),
      ),
    );
  }
}

class ChatSearchBarSection extends StatelessWidget {
  const ChatSearchBarSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey[200]),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20),
            fillColor: Colors.grey,
            hintText: "search",
            prefixIcon: const Icon(Icons.search),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}

class ShowChatCard extends StatelessWidget {
  const ShowChatCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          usersDetail.length,
          (index) => InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ChatDetail(
                              image: usersDetail[index].profilePic,
                              fullName:
                                  " ${usersDetail[index].firstName}  ${usersDetail[index].lastName}")));
                },
                child: ChatCard(
                    firstname: usersDetail[index].firstName,
                    lastname: usersDetail[index].lastName,
                    profilePic: usersDetail[index].profilePic,
                    isOnline: usersDetail[index].online),
              )),
    );
  }
}

