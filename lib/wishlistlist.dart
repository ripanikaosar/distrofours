import 'package:flutter/material.dart';
import 'package:distrofours/wishlist.dart';

class WishlistList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Kaos',
            style: TextStyle(fontSize: 22.0, color: Colors.black54),
          ),
          SizedBox(height: 16.0),
          Wishlist(),
          Wishlist(),
        ],
      ),
    );
  }
}