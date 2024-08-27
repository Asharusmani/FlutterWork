import 'package:first_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});
final imageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSFuHYRnhiyHLi2UIsRuhWkvxM_v93ad1_XQ&s";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
               decoration: BoxDecoration(
                 color: Colors.deepPurple,
               ),
                margin : EdgeInsets.zero,
                accountName: Text("Ashar Usmani"),
                  accountEmail:  Text("asherahmed900@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/ashar_image.jpg"),
                ),
                // currentAccountPicture: Image.network(imageUrl),
              ),
              ),
                ListTile(
                  leading: Icon(CupertinoIcons.home,color: Colors.white,
                  ),
                  title: Text("Home",textScaleFactor: 1.2,style: TextStyle(fontSize: 15,color: Colors.white),
                  ),
                ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,
              ),
              title: Text("Profile",textScaleFactor: 1.2,style: TextStyle(fontSize: 15,color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,
              ),
              title: Text("Email me",textScaleFactor: 1.2,style: TextStyle(fontSize: 15,color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
