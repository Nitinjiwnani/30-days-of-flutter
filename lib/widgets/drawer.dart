import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://media-exp1.licdn.com/dms/image/C4E03AQG4WX-D8vpTkQ/profile-displayphoto-shrink_200_200/0/1648981566276?e=1654732800&v=beta&t=RLerpbfrpIzncym39GugKiSMNAfLIcbyFOuCMUTMgMU";
    return Drawer(
      child: Container(
        color: Colors.lightBlue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue
                  ),
                  accountName: Text("Nitin Jiwnani"),
                  accountEmail: Text("Jiwnani01@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )
              ),
              Divider(color: Colors.black),
              ListTile(
                leading: Icon(CupertinoIcons.home,
                color: Colors.white,
                ),
                title: Text(
                  "Home",
               textScaleFactor: 1.2,
               style: TextStyle(
                 color: Colors.white,
                ), 
               ),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.profile_circled,
                color: Colors.white,
                ),
                title: Text(
                  "Profile",
               textScaleFactor: 1.2,
               style: TextStyle(
                 color: Colors.white,
                ), 
               ),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.mail,
                color: Colors.white,
                ),
                title: Text(
                  "Email me",
               textScaleFactor: 1.2,
               style: TextStyle(
                 color: Colors.white,
                ), 
               ),
              )
          ],
        ),
      ),
    );
  }
}
