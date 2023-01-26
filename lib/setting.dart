import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:messenger_chat_ui/consts/app_image.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white10,
        title: const Text("More", 
        style: TextStyle(color: Colors.black),),
      ),
      body:  SingleChildScrollView(
        child: Column( 
          children: [
           ListTile( 
                      leading: CircleAvatar(
              backgroundImage: AssetImage(AppImage.orang,),
                      ),
                      title: Text(
              "Almayra Zamzamy",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
              "+62 1309-1710-1920",
              style: TextStyle(fontSize: 13),
                      ),
                      trailing: IconButton(onPressed: (() {
                      }), icon: Icon(Icons.arrow_forward_ios_rounded,size: 15,
                      color: Colors.black,
                      )),
                    ),
        SizedBox(
          height: 17,
        ),
             ListTile(
              leading:
                  IconButton(onPressed: (() {}), icon: Icon(Icons.person,
                  color: Colors.black,)),
              title: Text(
                "Account",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
           trailing: IconButton(
                  onPressed: (() {}),
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                    color: Colors.black,
                  )),
            ),
              ListTile(
              leading:
                  IconButton(onPressed: (() {}), icon: Icon(Icons.chat_bubble_outline,
                  color: Colors.black,)),
              title: Text(
                "Chats",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
          trailing: IconButton(
                  onPressed: (() {}),
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
              ListTile(
              leading:
                  IconButton(onPressed: (() {}), icon: Icon(Icons.sunny,
                  color: Colors.black,)),
              title: Text(
                "Appereance",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
                 trailing: IconButton(
                  onPressed: (() {}),
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black,
                    size: 15,
                  )),
            ),
            ListTile(
              leading:
                  IconButton(onPressed: (() {}), icon: Icon(Icons.notifications_none,
                  color: Colors.black,)),
              title: Text(
                "Notification",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: (() {}),
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                    color: Colors.black,
                  )),
            ),
              ListTile(
              leading:
                  IconButton(onPressed: (() {}), icon: Icon(Icons.privacy_tip_outlined,
                  color: Colors.black,)),
              title: Text(
                "Privacy",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: (() {}),
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                    color: Colors.black,
                  )),
            ),
              ListTile(
              leading:
                  IconButton(onPressed: (() {}), icon: Icon(Icons.folder_open,
                  color: Colors.black,)),
              title: Text(
                "Data Usage",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: (() {}),
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                    color: Colors.black,
                  )),   ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                 child: const Divider(
              color: Colors.black,
              height: 20,
              thickness: 0.5,
              indent: 2,
              endIndent: 2,
            ),
                   ),
              ListTile(
              leading:
                  IconButton(onPressed: (() {}), icon: Icon(Icons.help_outline,
                  color: Colors.black,)),
              title: Text(
                "Help",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: (() {}),
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                    color: Colors.black,
                  )),
            ),
              ListTile(
              leading:
                  IconButton(onPressed: (() {}), icon: Icon(Icons.email_outlined,
                  color: Colors.black,)),
              title: Text(
                "Invite You",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  onPressed: (() {}),
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                    color: Colors.black,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}