import 'package:flutter/material.dart';
import 'home_body.dart';

class InstaHome extends StatelessWidget {

  final topBar = AppBar(
    backgroundColor: Color(0xFFF8FAF8),
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(Icons.camera_alt),
    title: SizedBox(
      height: 35.0,
      child: Image.asset('assets/images/insta_logo.png'),
    ),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  final bottomNavigation = Container(
    color: Colors.white,
    height: 50.0,
    alignment: Alignment.center,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.home),
        ),
        IconButton(
          icon: Icon(Icons.search),
        ),
        IconButton(
          icon: Icon(Icons.add_box),
        ),
        IconButton(
          icon: Icon(Icons.favorite),
        ),
        IconButton(
          icon: Icon(Icons.account_box),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: HomeBody(),
      bottomNavigationBar: bottomNavigation,
    );
  }
}