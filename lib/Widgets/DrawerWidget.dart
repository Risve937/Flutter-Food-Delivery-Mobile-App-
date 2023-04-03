import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
                accountName: Text(
                  "Risve",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                ),
                ),
                accountEmail: Text(
                    "karisve7@gmail.com",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/APPETIZER/avatar.jpg"),
              ),
            ),
          ),
          // list tile of drawer

          ListTile(
            leading: Icon(
                CupertinoIcons.home,
              color: Colors.grey,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          ListTile(
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.grey,
            ),
            title: Text(
              "Account",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          ListTile(
            leading: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.grey,
            ),
            title: Text(
              "Orders",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          ListTile(
            leading: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.grey,
            ),
            title: Text(
              "Wishlist",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          ListTile(
            leading: Icon(
              CupertinoIcons.settings_solid,
              color: Colors.grey,
            ),
            title: Text(
              "Settings",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.grey,
            ),
            title: Text(
              "Log Out",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

      ],
      ),
    );
  }
}
