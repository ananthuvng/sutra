import 'package:flutter/material.dart';
import 'nextpage.dart';
import 'package:flutter/widgets.dart';
import 'quiz.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF240831),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Color(0xFF240831),
              collapsedHeight: 80,
              expandedHeight: 140,
              pinned: true,
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "Sutra",
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontFamily: 'CaveatBrush',
                  ),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate(<Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                          'Vedic Mathematics is a collection of techniques which are known as Sutras, to solve mathematical arithmetics in easy and faster way. It was discovered by Indian mathematician Jagadguru Shri Bharathi Krishna Tirthaji in the period between A.D. 1911 and 1918. \nVedic Mathematics consists of 16 Sutras and 13 sub-sutras which are either General Techniques (applicable to all sets of given data) and Specific Techniques (applicable to specific sets of given data), can be used for problems involved in arithmetic, algebra, geometry, calculus, conics',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontFamily: 'CaveatBrush',
                          ),
                          textAlign: TextAlign.center),
                    )
                  ])
            ])),
            SliverGrid.count(
              crossAxisCount: 2,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => sutra1(
                                  sutra: 'URDHVA-TIRYAGBHYAM',
                                  image: 'image',
                                )));
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'URDHVA-TIRYAGBHYAM',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontFamily: 'ConcertOne',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 3,
                            child: Center(
                              child: Container(
                                  margin: EdgeInsets.all(15),
                                  child: Image(
                                      image: AssetImage('images/math.png'))),
                            ))
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xFF15F4EE),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF00FFFF),
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                            blurRadius: 14,
                          ),
                        ]),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => sutra2(
                                  sutra: 'EKADHIKENA PURVENA',
                                  image: 'image',
                                )));
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'EKADHIKENA PURVENA',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontFamily: 'ConcertOne',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 3,
                            child: Center(
                              child: Container(
                                  margin: EdgeInsets.all(15),
                                  child: Image(
                                      image: AssetImage('images/five.png'))),
                            ))
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xFFFF007F),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFFC46AA),
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                            blurRadius: 14,
                          ),
                        ]),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => sutra3(
                                  sutra: 'ANURUPYENA',
                                  image: 'image',
                                )));
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'ANURUPYENA',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontFamily: 'ConcertOne',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 3,
                            child: Center(
                              child: Container(
                                  margin: EdgeInsets.all(15),
                                  child: Image(
                                      image: AssetImage('images/maths.png'))),
                            ))
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xFFFF007F),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFFC46AA),
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                            blurRadius: 14,
                          ),
                        ]),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => sutra4(
                                  sutra: 'ANTYAORDASKE’PI',
                                  image: 'image',
                                )));
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'ANTYAORDASKE’PI',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontFamily: 'ConcertOne',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 3,
                            child: Center(
                              child: Container(
                                  margin: EdgeInsets.all(15),
                                  child: Image(
                                      image: AssetImage('images/ten.png'))),
                            ))
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xFF15F4EE),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF00FFFF),
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                            blurRadius: 14,
                          ),
                        ]),
                  ),
                ),
              ],
            ),
            SliverList(
                delegate: SliverChildListDelegate(<Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => quiz()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.yellowAccent[700],
                          borderRadius: BorderRadius.circular(30)),
                      height: 100,
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'QUIZ',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'CaveatBrush',
                                fontSize: 30),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image(
                              height: 50,
                              width: 50,
                              image: AssetImage('images/quiz.png'))
                        ],
                      ))),
                ),
              ),
              SizedBox(height: 40)
            ]))
          ],
        ),
      ),
    );
  }
}
