import 'package:flutter/material.dart';
import 'home.dart';
import 'dart:async';

class logo extends StatefulWidget {
  @override
  _logoState createState() => _logoState();
}

class _logoState extends State<logo> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 6),
        () => Navigator.pushReplacementNamed(context, '/home'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF262626),
      body: Center(
          child: Column(
        children: <Widget>[
          Image(image: AssetImage('images/logo.gif')),
          Image(image: AssetImage('images/AKL.png')),
        ],
      )),
    );
  }
}
