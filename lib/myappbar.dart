import 'package:flutter/material.dart';
import 'package:distrofours/wishlistpage.dart';
import 'package:distrofours/search.dart';
import 'package:distrofours/keranjangpage.dart';

class MyAppbar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  IconButton(
                 icon: Icon(Icons.home,color: Colors.black45), tooltip: 'Home',
                  onPressed: () {
                    
                  },
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  IconButton(
                  icon: Icon(Icons.search, color: Colors.black45), tooltip: 'Search',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Search()));
                  },
                  ),
                ],
              ),
              Container(
                width: 100.0,
              ),
              Column(
                children: <Widget>[
                  IconButton(
                  icon:  Icon(Icons.shop, color: Colors.black45), tooltip: 'Wishlist',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WhishlistPage()));
                  },
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  IconButton(
                  icon:  Icon(Icons.shopping_cart, color: Colors.black45), tooltip: 'Chart',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => KeranjangPage()));
                  },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}