import 'package:flutter/material.dart';
import 'package:distrofours/myhomepage.dart';
import 'package:distrofours/masuk.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.home,
              text: 'Home',
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
              }
              ),
          _drawerItem(
              icon: Icons.group,
              text: 'Shared',
              onTap: () => print('Tap Shared menu')),
          _drawerItem(
              icon: Icons.access_time,
              text: 'Pemesanan',
              onTap: () => print('Tap Recent menu')),
          _drawerItem(
              icon: Icons.delete,
              text: 'Hapus Akun',
              onTap: () => print('Tap Trash menu')),
          _drawerItem(
              icon: Icons.door_back_door,
              text: 'Keluar',
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Masuk()));
              }
          ),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Labels",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(
              icon: Icons.bookmark,
              text: 'Bookmark',
              onTap: () => print('Tap Family menu')),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
          image: AssetImage('images/cupnurzie.jpg'), fit: BoxFit.cover),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(
            image: AssetImage('images/ipang.jpg'), fit: BoxFit.cover),
      ),
      ClipOval(
        child: Image(
            image: AssetImage('images/shela.jpeg'), fit: BoxFit.cover),
      )
    ],
    accountName: Text('Cupnurzie'),
    accountEmail: Text('cupnurzie@gmail.com'),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}