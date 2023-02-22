import 'package:flutter/material.dart';
import 'package:distrofours/myactionbutton.dart';
import 'package:distrofours/myappbar.dart';
import 'package:distrofours/foodlistview.dart';
import 'package:distrofours/selectedtypesection.dart';
import 'package:distrofours/menuitemlist.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: MyActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: MyAppbar(),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 16.0),
              FoodListview(),
              SizedBox(height: 16.0),
              SelectTypeSection(),
              SizedBox(height: 16.0),
              MenuItemsList()
            ],
          ),
        )
    );
  }
}