import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(100),
            child: Container(
              width: 380,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    _buildnumberTwentyFour(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildDifferentNumbers('C'),
                    _buildDifferentNumbers('+/-'),
                    _buildDifferentNumbers('%'),
                    _buildButtonOperation('÷', Colors.orange),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _buildDifferentNumbers('7'),
                      _buildDifferentNumbers('8'),
                      _buildDifferentNumbers('9'),
                      _buildButtonOperation('x', Colors.orange),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildDifferentNumbers('4'),
                    _buildDifferentNumbers('5'),
                    _buildDifferentNumbers('6'),
                    _buildButtonOperation('−', Colors.orange),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildDifferentNumbers('1'),
                    _buildDifferentNumbers('2'),
                    _buildDifferentNumbers('3'),
                    _buildButtonOperation('−', Colors.orange),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _buildButtonZero(),
                    _buildButtonOperation('.', Colors.grey),
                    _buildButtonOperation('=', Colors.orange),
                  ],
                ),
              ]),
            ),
          ),
        ));
  }

  Widget _buildnumberTwentyFour() {
    return Row(
      children: [
        Text(
          '24',
          style: TextStyle(color: Colors.white, fontSize: 75),
        ),
      ],
    );
  }

  Widget _buildDifferentNumbers(String number) {
    return Container(
      width: 80,
      height: 80,
      margin: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.grey[500],
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }

  Widget _buildButtonOperation(String icon, Color color) {
    return Container(
        width: 80,
        height: 80,
        margin: EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            icon,
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ));
  }

  Widget _buildButtonZero() {
    return Container(
      width: 160,
      height: 80,
      margin: EdgeInsets.all(7),
      padding: EdgeInsets.only(right: 80),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Text(
          '0',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }
}
