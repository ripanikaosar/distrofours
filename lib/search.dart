import 'package:flutter/material.dart';

class Search extends StatelessWidget{

@override
Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Cari Produk Dan Brand', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(
              height: 20,
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none
                ),
                hintText: "eg: Uniqlo",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.black
              ),
            ),
          ],
        ),
      ),
    );
  }
}