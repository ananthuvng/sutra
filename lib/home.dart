import 'package:flutter/material.dart';
import 'quiz.dart';
import 'nextpage.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int c_index = 0;
  final tabs = [learn(), quiz()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[c_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: c_index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_outline),
              title: Text(
                'Let\'s do',
              ),
              backgroundColor: Colors.green)
        ],
        onTap: (index) {
          setState(() {
            c_index = index;
          });
        },
      ),
    );
  }
}

class learn extends StatefulWidget {
  const learn({Key? key}) : super(key: key);

  @override
  _learnState createState() => _learnState();
}

class _learnState extends State<learn> {
  bool isv1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
            SizedBox(
              height: 30,
            ),
            Text(
              'Hello kids,let\'s learn vedic mathematics...',
              style: TextStyle(fontFamily: 'FredokaOne', fontSize: 25),
            ),
            Image(height: 300, image: AssetImage('images/children.png')),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            color: Colors.amber,
                            child: Text(
                              'Vedic Mathematics is a collection of techniques which are known as Sutras, to solve mathematical arithmetics in easy and faster way. It was discovered by Indian mathematician Jagadguru Shri Bharathi Krishna Tirthaji in the period between A.D. 1911 and 1918. \nVedic Mathematics consists of 16 Sutras and 13 sub-sutras which are either General Techniques (applicable to all sets of given data) and Specific Techniques (applicable to specific sets of given data), can be used for problems involved in arithmetic, algebra, geometry, calculus, conics',
                              style: TextStyle(
                                  fontFamily: 'FredokaOne', fontSize: 15),
                            ),
                          ),
                        ),
                      );
                    });
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'What is vedic mathematics?',
                      style: TextStyle(fontFamily: 'FredokaOne', fontSize: 22),
                    ),
                    Text(
                      'Tap to know',
                      style: TextStyle(fontFamily: 'FredokaOne', fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Let\'s learn some vedic sutras',
                style: TextStyle(fontFamily: 'FredokaOne', fontSize: 22),
              ),
            ),
            SizedBox(height: 15),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF15F4EE),
                  ),
                  width: MediaQuery.of(context).size.width * .9,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Text(
                          'URDHVA-TIRYAGBHYAM',
                          style:
                              TextStyle(fontFamily: 'FredokaOne', fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                          flex: 5,
                          child: Image(
                              height: 170,
                              image: AssetImage('images/rocket.png')))
                    ],
                  )),
            ),
            SizedBox(height: 15),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFFF007F),
                  ),
                  width: MediaQuery.of(context).size.width * .9,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Text(
                          'EKADHIKENA PURVENA',
                          style:
                              TextStyle(fontFamily: 'FredokaOne', fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                          flex: 4,
                          child: Image(
                              height: 170, image: AssetImage('images/kid.png')))
                    ],
                  )),
            ),
            SizedBox(height: 15),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightGreenAccent[400],
                  ),
                  width: MediaQuery.of(context).size.width * .9,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Text(
                          'ANURUPYENA',
                          style:
                              TextStyle(fontFamily: 'FredokaOne', fontSize: 22),
                        ),
                      ),
                      Expanded(
                          flex: 4,
                          child: Image(
                              height: 170,
                              image: AssetImage('images/ideas.png')))
                    ],
                  )),
            ),
            SizedBox(height: 15),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple[600],
                  ),
                  width: MediaQuery.of(context).size.width * .9,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Text(
                          'ANTYAORDASKE’PI',
                          style:
                              TextStyle(fontFamily: 'FredokaOne', fontSize: 25),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Image(
                            height: 170,
                            image: AssetImage('images/thinking.png')),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
