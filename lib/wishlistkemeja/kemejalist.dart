import 'package:flutter/material.dart';
import 'package:distrofours/wishlistkemeja/kemeja.dart';

class KemejaList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Kemeja',
            style: TextStyle(fontSize: 22.0, color: Colors.black54),
          ),
          SizedBox(height: 16.0),
          Kemeja(),
        ],
      ),
    );
  }
}