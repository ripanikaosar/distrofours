import 'package:flutter/material.dart';

class SelectTypeSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                height: 92.0,
                width: 120.0,
                color: Colors.lightGreen,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Image.asset('images/menu1.png', width: 20, height: 20,),
                      color: Colors.white,
                      onPressed: () {
                        
                      },
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Special Menu',
                      style:
                          TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 92.0,
              width: 120.0,
              color: Colors.redAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Image.asset('images/book.png', width: 20, height: 20,),
                    color: Colors.white,
                    onPressed: () {
                      
                    },
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Book Product',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              height: 92.0,
              width: 124.0,
              color: Colors.lightBlue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Image.asset('images/menu2.png', width: 20, height: 20,),
                    color: Colors.white,
                    onPressed: () {
                      
                    },
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Category',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}