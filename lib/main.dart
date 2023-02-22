import 'package:flutter/material.dart';
import 'package:distrofours/masuk.dart';
import 'package:distrofours/Daftar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DISTRO FOURS',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget{
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
                  _iconHome(),
                  _titleDeskripsi(),
                  _buildButton(context),
                  _buildButton1(context)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _iconHome() {
        return Image.asset("images/orcom.png", width: 500, height: 250,
    );
  }
  Widget _titleDeskripsi() {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 12.0),
        ),
        Text('Selamat Datang',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
        ),
        Padding(padding: EdgeInsets.only(top: 16.0),
        ),
        Text('Di Platform Kami',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          ),
          textAlign: TextAlign.center,
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Masuk()));
            },
          ),    
      ],
    );
  }
   Widget _buildButton1(BuildContext context) {
    return Column(
      children: <Widget>[
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.0 ),
              width: double.infinity,
              child: Text('Daftar',
          style: TextStyle(color: Colors.black, fontSize: 20,),
          textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Daftar()));
            },
          ),    
          Padding(padding: EdgeInsets.only(top: 16.0),
          ),
      ],
    );
  }
}
