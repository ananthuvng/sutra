import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'quiz.dart';
import 'package:path/path.dart';

class sutra1 extends StatefulWidget {
  final String sutra;
  final String image;
  const sutra1({required this.sutra, required this.image});

  @override
  _sutra1State createState() => _sutra1State(sutra, image);
}

class _sutra1State extends State<sutra1> {
  String sutra;
  String image;
  int _n = 0,
      _m = 0,
      _n1 = 0,
      _m1 = 0,
      _n2 = 0,
      _m2 = 0,
      _a = 0,
      _b = 0,
      _c = 0,
      _d1 = 0,
      _d2 = 0,
      _x1 = 0,
      _x2 = 0,
      _y1 = 0,
      _y2 = 0,
      _z1 = 0,
      _z2 = 0,
      _ans = 0;
  bool _isv1 = false,
      _isv2 = false,
      _isv3 = false,
      _isv4 = false,
      _isv5 = false,
      isq = false;
  final _tc1 = TextEditingController();
  final _tc2 = TextEditingController();

  _sutra1State(this.sutra, this.image);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  sutra,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'FredokaOne',
                      fontSize: 30),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Urdhva - Tiryagbhyam Sutra is a general technique applicable to  multiplication of any two digit numbers. The word  means “Vertically and cross wise”.',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'FredokaOne',
                      fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _tc1,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  maxLength: 2,
                  maxLines: 1,
                  decoration: InputDecoration(
                      hintText: 'Enter first number',
                      hintStyle: TextStyle(
                          color: Colors.black, fontFamily: 'FredokaOne'),
                      border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _tc2,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  maxLength: 2,
                  maxLines: 1,
                  decoration: InputDecoration(
                      hintText: 'Enter second number',
                      hintStyle: TextStyle(
                          color: Colors.black, fontFamily: 'FredokaOne'),
                      border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      _isv1 = true;
                      _n = int.parse(_tc1.text);
                      _m = int.parse(_tc2.text);
                      _n1 = _n % 10;
                      _n2 = _n ~/ 10;
                      _m1 = _m % 10;
                      _m2 = _m ~/ 10;
                      _a = _n2 * _m2;
                      _b = _n1 * _m1;
                      _c = (_n2 * _m1) + (_n1 * _m2);
                    });
                  },
                  color: Colors.amber[700],
                  child: Text(
                    'Calculate',
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Visibility(
                      visible: _isv1,
                      child: GestureDetector(
                        onTap: () => {
                          setState(() {
                            _isv2 = true;
                          }),
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueGrey[900],
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'Multiply $_n2 and $_m2 i.e $_n2 x $_m2 =  $_a ',
                                      style: TextStyle(
                                          fontFamily: 'FredokaOne',
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      'Tap for nextstep',
                                      style: TextStyle(
                                        fontFamily: 'FredokaOne',
                                        color: Colors.amber,
                                      ),
                                    )
                                  ],
                                ))),
                      ),
                    ),
                    SizedBox(height: 10),
                    Visibility(
                      visible: _isv2,
                      child: GestureDetector(
                        onTap: () => {
                          setState(() {
                            _isv3 = true;
                          }),
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Multiply $_n1 and $_m1 i.e $_n1 x $_m1 =  $_b ',
                                  style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                                Text(
                                  ' Tap for nextstep',
                                  style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.amber),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Visibility(
                      visible: _isv3,
                      child: GestureDetector(
                        onTap: () => {
                          setState(() {
                            _isv4 = true;
                            _x1 = _a ~/ 10;
                            _x2 = _a % 10;
                            _y1 = _b ~/ 10;
                            _y2 = _b % 10;
                            _d1 = _c ~/ 10;
                            _d2 = _c % 10;
                          }),
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Now do ($_n1 x $_m2) + ($_n2 x $_m1) = $_c',
                                  style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                                Text(
                                  ' Tap for nextstep',
                                  style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.amber),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Visibility(
                      visible: _isv4,
                      child: GestureDetector(
                        onTap: () => {
                          setState(() {
                            _isv5 = true;
                            _z2 = _x2 + _d1;
                            _z1 = _y1 + _d2;
                            _ans = _n * _m;
                          }),
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Now do $_x1 | $_x2 + $_d1 | $_d2 + $_y1 | $_y2',
                                  style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                                Text(
                                  ' Tap for check answer',
                                  style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.amber),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Visibility(
                      visible: _isv5,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueGrey[900],
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Answer is $_ans',
                              style: TextStyle(
                                  fontFamily: 'FredokaOne',
                                  color: Colors.white,
                                  fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                FlatButton(
                    onPressed: () {
                      setState(() {
                        _tc1.clear();
                        _tc2.clear();
                        _isv1 = false;
                        _isv2 = false;
                        _isv3 = false;
                        _isv4 = false;
                        _isv5 = false;
                      });
                    },
                    color: Colors.amber[700],
                    child: Text(
                      'Reset',
                    )),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isq = true;
                    });
                  },
                  child: Container(
                      child: Column(
                    children: <Widget>[
                      Text(
                        'Let\'s workout',
                        style:
                            TextStyle(fontFamily: 'FredokaOne', fontSize: 20),
                      ),
                      Text(
                        'Tap to load questions',
                        style: TextStyle(fontFamily: 'FredokaOne'),
                      ),
                    ],
                  )),
                ),
                Visibility(
                    visible: isq,
                    child: Column(
                      children: <Widget>[
                        maker(
                            qn: 'Multiply the numbers 33 and 44.',
                            ans: 1452,
                            con: 'tc1'),
                        maker(
                            qn: 'Find the product of 22 and 34.',
                            ans: 748,
                            con: 'tc2'),
                        maker(
                            qn: 'A man has 30 notes of ₹10.  How much money does he possess?',
                            ans: 300,
                            con: 'tc3'),
                        maker(
                            qn: 'A bag contains 20 packets of balloons. Each packet contains 34 balloons. How many balloons are there in total?',
                            ans: 680,
                            con: 'tc4'),
                        maker(
                            qn: 'A car factory manufactures 22 cars each month. How many cars are manufactured in 11 months?',
                            ans: 242,
                            con: 'tc5')
                      ],
                    ))
              ]),
        ),
      ),
    );
  }
}
