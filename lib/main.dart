import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BasketBall());

class BasketBall extends StatefulWidget {
  const BasketBall({Key? key}) : super(key: key);

  @override
  _BasketBallState createState() => _BasketBallState();
}

class _BasketBallState extends State<BasketBall> {
  int _TeamA = 0, _TeamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Points Counter'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team A',
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        '$_TeamA',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(5)),
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                _TeamA += 1;
                              });
                            },
                            child: const Text(
                              'Add 1 point',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(5)),
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                _TeamA += 2;
                              });
                            },
                            child: const Text(
                              'Add 2 point',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(5)),
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                _TeamA += 3;
                              });
                            },
                            child: Text(
                              'Add 3 point',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: const VerticalDivider(
                    indent: 50,
                    endIndent: 50,
                    color: Colors.orange,
                    thickness: 2,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team B',
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        '$_TeamB',
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(5)),
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                _TeamB += 1;
                              });
                            },
                            child: Text(
                              'Add 1 point',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(5)),
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                _TeamB += 2;
                              });
                            },
                            child: const Text(
                              'Add 2 point',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(5)),
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                _TeamB += 3;
                              });
                            },
                            child: Text(
                              'Add 3 point',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.orangeAccent,
                child:  FlatButton(
                  onPressed: (){
                    setState(() {
                      _TeamB=0;
                      _TeamA=0;
                    });
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
