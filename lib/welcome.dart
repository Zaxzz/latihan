import 'package:flutter/material.dart';
import 'package:messenger_chat_ui/constant.dart';
import 'package:messenger_chat_ui/messenger_chat_homepage.dart';
import 'package:messenger_chat_ui/pages/chat_home_page.dart';
import 'package:messenger_chat_ui/phone.dart';


class Agreetermspage extends StatefulWidget {
  const Agreetermspage({Key? key}) : super(key: key);

  @override
  State<Agreetermspage> createState() => _AgreetermspageState();
}

class _AgreetermspageState extends State<Agreetermspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: screenwidth(context) / 10 * 4),
            child: Column(
              children: [
                 Image.asset('assets/illustration.png',
                 width: MediaQuery.of(context).size.width / 2,
                 ),
                SizedBox(
                  height: screenheight(context) / 10 * 1,
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  'Connect easily with',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'your family and friends',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'over countries',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                ),
               
                RichText(
                  text: TextSpan(
                    text: 'Terms & Privacy Policy',
                    style: TextStyle(color: Colors.black, fontSize: 12),         
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyPhone()),
                    );
                  },
                  child: 
                   Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        color: Color.fromARGB(255, 7, 48, 255),
                      ),
                      child: 
                      Center(
                          child: Text(
                        'Start Messaging',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )), 
                    ),
                  ), 
                )
              ],
            ),
          ),
          
        ),
      ),
    );
  }
}
