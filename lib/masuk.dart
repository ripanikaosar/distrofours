import 'package:flutter/material.dart';
import 'package:distrofours/myhomepage.dart';
void main() => runApp(Masuk());

class Masuk extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _iconMasuk(),
                  _titleDeskripsi(),
                  _textfield(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _iconMasuk() {
        return Image.asset("images/orcom.png", width: 500, height: 250,
    );
  }
  Widget _titleDeskripsi() {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 12.0),
        ),
        Text('Masuk aja gapapa',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
        ),
        Padding(padding: EdgeInsets.only(top: 16.0),
        ),
        Text('Selamat Datang Di Platform Kami',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
  Widget _textfield() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
            ),
            hintText: 'Username',
            hintStyle: TextStyle(color: Colors.black),
          ),
          style: TextStyle(color: Colors.black),
          autofocus: false,
        ),
        Padding(padding: EdgeInsets.only(top: 12.0),
        ),
                TextFormField(
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
            ),
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.black),
          ),
          style: TextStyle(color: Colors.black),
          obscureText: true,
          autofocus: false,
        ),
      ],
    );
  }
  Widget _buildButton(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16.0),
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.0 ),
              width: double.infinity,
              child: Text('Masuk',
          style: TextStyle(color: Colors.white, fontSize: 20,),
          textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
            },
          ),    
          Padding(padding: EdgeInsets.only(top: 16.0),
          ),
      ],
    );
  }
}