import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';



class sutra3 extends StatefulWidget {
  final String sutra;
  final String image;
  const sutra3({required this.sutra, required this.image});

  @override
  _sutra3State createState() => _sutra3State(sutra, image);
}

class _sutra3State extends State<sutra3> {
  String sutra;
  String image;
  final _tc1 = TextEditingController();
  final _tc2 = TextEditingController();
  bool _isv1 = false,
      _isv2 = false,
      _isv3 = false,
      _isv4 = false,
      _isv5 = false,
      _isv6 = false;
  bool isq=false;
  int _n = 0,
      _m = 0,
      _f = 0,
      _a = 0,
      _b = 0,
      _c = 0,
      _d = 0,
      _e = 0,
      _ans = 0,
      _ans1 = 0,
      flag = 0;
  _sutra3State(this.sutra, this.image);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
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
                height: 20,
              ),
              Text(
                'Anurupyena Sutra is a specific  technique applicable to multiplication of numbers which are closer to the multiple of 10. It means “proportionality”.',
                style: TextStyle(
                    fontFamily: 'FredokaOne',
                    color: Colors.black,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _tc1,
                style: TextStyle(color: Colors.black),
                maxLines: 1,
                decoration: InputDecoration(
                    hintText: 'Enter first number',
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'FredokaOne'),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10),
              TextField(
                controller: _tc2,
                style: TextStyle(color: Colors.black),
                maxLines: 1,
                decoration: InputDecoration(
                    hintText: 'Enter second number',
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'FredokaOne'),
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
                    if ((_n ~/ 10) == (_m ~/ 10)) {
                      flag = 1;
                      _f = (_n ~/ 10) + 1;
                    } else if ((_n ~/ 10) < (_m ~/ 10)) {
                      _f = (_n ~/ 10) + 1;
                    } else {
                      _f = (_m ~/ 10) + 1;
                    }
                    _a = (_f * 10) - _n;
                    _b = (_f * 10) - _m;
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
                                    'Find the nearest multiple of 10 for $_n and $_m \n i.e for $_n and $_m it\'s $_f 0 ',
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
                          _c = _a * _b;
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
                                    'Find the deviation of $_n and $_m from $_f 0 \n i.e $_f 0 - $_n = $_a  and $_f 0 - $_m = $_b',
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
                    visible: _isv3,
                    child: GestureDetector(
                      onTap: () => {
                        setState(() {
                          _isv4 = true;
                          _d = _n - _b;
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
                                    'Multiply th deviations \n i.e $_a x $_b = $_c',
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
                    visible: _isv4,
                    child: GestureDetector(
                      onTap: () => {
                        setState(() {
                          _isv5 = true;
                          _e = _d * _f;
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
                                    'Take difference of any given number with anothers deviation \n i.e $_n - $_b = $_d',
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
                    visible: _isv5,
                    child: GestureDetector(
                      onTap: () => {
                        setState(() {
                          _isv6 = true;
                          _ans = _n * _m;
                          _ans1 = (_e * 10) + _c;
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
                                    'Multiply th difference with factor \n i.e $_d x $_f = $_e',
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
                    visible: _isv6,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueGrey[900],
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                flag == 1
                                    ? 'Place product of deviation at right of last result \n i.e Answer is $_ans'
                                    : 'Multiply result with 10 and add product of deviation \n i.e ($_e x 10) + $_c = $_ans1',
                                style: TextStyle(
                                    fontFamily: 'FredokaOne',
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                            ))),
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
                      _isv6 = false;
                    });
                  },
                  color: Colors.amber[700],
                  child: Text(
                    'Reset',
                  )),
                   SizedBox(height:20),
                   GestureDetector(
                     onTap: (){
                       setState(() {
                         isq=true;
                       });
                     },
                                        child: Container(
                       child:Column(
                         children:<Widget> [
                           Text('Let\'s workout',style: TextStyle(fontFamily: 'FredokaOne',fontSize: 20),),
                           Text('Tap to load questions',style: TextStyle(fontFamily: 'FredokaOne'),),
                         ],
                       )
                     ),
                   ),

                   Visibility(
                     visible: isq,
                     child: Column(
                       children: <Widget>[
                         maker(qn:'Find product of 37 and 34', ans : 1258 ,con:'tc1'),
                         maker(qn:'Multiply 44 and 45.', ans : 1980 ,con:'tc2'),
                         maker(qn:'Find product of 45 and 53', ans : 2385,con:'tc3'),
                         maker(qn:'Ram started making chocolates. One day he has 73 customers and each one orders 63 chocolates. How many chocolates did he made?', ans : 4599,con:'tc4'),
                         maker(qn:'he price of a book is ₹39. What is the cost of 35 books?', ans : 1365 ,con:'tc5')
                       ],
                     ))
            ],
          ),
        ),
      ),
    );
  }
}