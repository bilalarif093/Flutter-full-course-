import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Bilal Arif"),
              accountEmail: Text("bilal.arif@superior.edu.pk"),
              currentAccountPicture: Image(
                image: AssetImage("images/pic.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
