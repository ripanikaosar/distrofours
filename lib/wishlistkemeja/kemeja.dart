import 'package:flutter/material.dart';

class Kemeja extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.asset(
              'images/kemeja1.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
          Container(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.shop,
                            size: 15.0,
                          ),
                          Text('Tersimpan')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Kemeja Pria',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Container(
                      width: 200.0,
                      child: Text(
                        'kemejapria, flanel, satin, ruber, dtg,......',
                        style: TextStyle(color: Colors.grey),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}