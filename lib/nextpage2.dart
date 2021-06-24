import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';
class sutra2 extends StatefulWidget {
  final String sutra;
  final String image;
  const sutra2({required this.sutra, required this.image});

  @override
  _sutra2State createState() => _sutra2State(sutra, image);
}

class _sutra2State extends State<sutra2> {
  String sutra;
  String image;
  final _tc1 = TextEditingController();
  bool _isv1 = false, _isv2 = false, _isv3 = false, _isv1b = false,isq=false;
  int _a = 0, _b = 0, _c = 0, _d = 0, _r = 0;
  _sutra2State(this.sutra, this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
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
                  'Ekadhikena Purvena Sutra is a specific  technique applicable to  find squares of any numbers with last digit as  5. The word  means “One more than the Previous”.',
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
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  maxLines: 1,
                  decoration: InputDecoration(
                      hintText: 'Enter number ending with 5',
                      hintStyle: TextStyle(
                          color: Colors.black, fontFamily: 'FredokaOne'),
                      border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      _a = int.parse(_tc1.text);
                      _d = _a ~/ 10;
                      _r = _a % 10;
                      if (_r != 5) {
                        _isv1b = true;
                      } else {
                        _isv1 = true;
                      }
                      _b = _d + 1;
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
                        visible: _isv1b,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueGrey[900],
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Oops!!!, the last digit is not 5',
                                  style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.red,
                                      fontSize: 20),
                                )))),
                    SizedBox(height: 10),
                    Visibility(
                      visible: _isv1,
                      child: GestureDetector(
                        onTap: () => {
                          setState(() {
                            _isv2 = true;
                            _c = _d * _b;
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
                                      'Avoid the 5 at end , then add 1 to remaining part\n i.e $_d + 1 = $_b',
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
                                  children: [
                                    Text(
                                      'Multiply the remaining part and result\n i.e $_d x $_b = $_c',
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
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900],
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  'Now 25 to the right end of the product \n i.e Answer is $_c 25',
                                  style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ))),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(height: 10),
                FlatButton(
                    onPressed: () {
                      setState(() {
                        _tc1.clear();
                        _isv1 = false;
                        _isv2 = false;
                        _isv3 = false;
                        _isv1b = false;
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
                         maker(qn:'Find Square of 25.', ans : 625 ,con:'tc1'),
                         maker(qn:'Multiply 45 and 45.', ans : 2025 ,con:'tc2'),
                         maker(qn:'Find product of 65 and 65.', ans : 4225 ,con:'tc3'),
                         maker(qn:'A  store sells 55 packets of candies . Each packet contains 55 candies. How many candies are there in total?', ans : 3025 ,con:'tc4'),
                         maker(qn:'A bus has a seating capacity of 35 people. How many people 35 can travel in  bus of same seating capacity?', ans : 1225 ,con:'tc5')
                       ],
                     ))
              ]),
        ),
      ),
    );
  }
}