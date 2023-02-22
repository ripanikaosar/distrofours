import 'package:flutter/material.dart';
import 'package:distrofours/keranjang/keranjanglist.dart';
import 'package:distrofours/keranjang/keranjanglist.dart';

class KeranjangPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 16.0),
              KeranjangList(),
            ],
          ),
        )
    );
  }
}
