import 'package:flutter/Material.dart';
import 'package:distrofours/navbardrawer.dart';


class MyActionButton extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      width: 75.0,
      child: ClipOval(
        child: Container(
          color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
              icon: Image.asset('images/menu.png',width: 30, height: 30,), tooltip: 'Menu',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DrawerWidget()));
              }
              ),
              SizedBox(
                height: 4.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

 