import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';



class sutra4 extends StatefulWidget {
  final String sutra;
  final String image;
  const sutra4({required this.sutra, required this.image});

  @override
  _sutra4State createState() => _sutra4State(sutra, image);
}

class _sutra4State extends State<sutra4> {
  String sutra;
  String image;
  final _tc1 = TextEditingController();
  final _tc2 = TextEditingController();
  bool _isv1 = false,
      _isv2 = false,
      _isv3 = false,
      _isv4 = false,
      _isv1b = false,
      _isv1c = false;
  bool isq=false;
  int _a = 0, _b = 0, _c = 0, _d = 0, _e = 0, _f = 0, _g = 0, _h = 0, _i = 0;
  _sutra4State(this.sutra, this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
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
                height: 20,
              ),
              Text(
                'Antyaordaske’pi Sutra is a specific  technique applicable to multiplication of  two numbers with  sum of their last digits as 10 and remaining digits are same. The word  means “Last Totalling as 10.”',
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
                    hintText: 'Enter first number ',
                    hintStyle: TextStyle(
                        color: Colors.black, fontFamily: 'FredokaOne'),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10,),
              TextField(
                controller: _tc2,
                style: TextStyle(color: Colors.black),
                maxLines: 1,
                decoration: InputDecoration(
                    hintText: 'Enter 2nd number ',
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
                    _b = int.parse(_tc2.text);
                    _c = _a ~/ 10;
                    _d = _b % 10;
                    _e = _a % 10;
                    _i = _b ~/ 10;
                    if ((_d + _e) == 10 && (_c == _i)) {
                      _isv1 = true;
                    } else if (_c != _i) {
                      _isv1c = true;
                    } else {
                      _isv1b = true;
                    }
                    _f = _d * _e;
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
                            'Oops!!!, sum of last digits are not 10',
                            style: TextStyle(
                                fontFamily: 'FredokaOne',
                                color: Colors.red,
                                fontSize: 20),
                          ),
                        )),
                  ),
                  SizedBox(height: 10),
                  Visibility(
                    visible: _isv1c,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueGrey[900],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Oops!!!, intial digits are not same',
                            style: TextStyle(
                                fontFamily: 'FredokaOne',
                                color: Colors.red,
                                fontSize: 20),
                          ),
                        )),
                  ),
                  SizedBox(height: 10),
                  Visibility(
                      visible: _isv1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isv2 = true;
                            _g = _c + 1;
                          });
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
                                  'Multiply the last digits \n i.e $_d x $_e = $_f',
                                  style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                                Text(
                                  'Tap for next step',
                                  style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.amber),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                  SizedBox(height: 10),
                  Visibility(
                      visible: _isv2,
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isv3 = true;
                              _h = _g * _c;
                            });
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
                                    'Add 1 to the Remaining part \n i.e $_c + 1 = $_g',
                                    style: TextStyle(
                                        fontFamily: 'FredokaOne',
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    'Tap for Next Step',
                                    style: TextStyle(
                                        fontFamily: 'FredokaOne',
                                        color: Colors.amber),
                                  )
                                ],
                              ),
                            ),
                          ))),
                  SizedBox(height: 10),
                  Visibility(
                      visible: _isv3,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isv4 = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: <Widget>[
                              Text(
                                'Mutiply the remaining part with result \n i.e $_c x $_g = $_h',
                                style: TextStyle(
                                    fontFamily: 'FredokaOne',
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              Text(
                                'Tap for next step',
                                style: TextStyle(
                                    fontFamily: 'FredokaOne',
                                    color: Colors.amber),
                              ),
                            ]),
                          ),
                        ),
                      )),
                  SizedBox(height: 10),
                  Visibility(
                    visible: _isv4,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueGrey[900],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'Place $_f to right of $_h to get answer \n i.e Answer is $_h $_f',
                              style: TextStyle(
                                  fontFamily: 'FredokaOne',
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                          ),
                        )),
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
                      _isv1b = false;
                      _isv1c = false;
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
                         maker(qn:'Find product of 34 and 36.', ans : 1224 ,con:'tc1'),
                         maker(qn:'’Multiply 57 and 53.', ans :3021,con:'tc2'),
                         maker(qn:'Multiply 23 and 27.', ans : 621 ,con:'tc3'),
                         maker(qn:'A postman delivers 78 letters daily. How many letters does he deliver in 72 days?', ans :5616  ,con:'tc4'),
                         maker(qn:'Cost of one bottle is ₹24. How much money is needed to buy 26 bottles?', ans : 624 ,con:'tc5')
                       ],
                     ))
            ],
          ),
        ),
      ),
    );
  }
}