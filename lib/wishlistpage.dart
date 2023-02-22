import 'package:flutter/material.dart';
import 'package:distrofours/wishlistkemeja/kemejalist.dart';
import 'package:distrofours/wishlistlist.dart';

class WhishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 16.0),
              WishlistList(),
              SizedBox(height: 16.0),
              KemejaList(),
            ],
          ),
        )
    );
  }
}