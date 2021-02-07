import 'package:flutter/material.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 320,
          padding: EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  _buildDisplay('24'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildButton('C'),
                  _buildButton('+/-'),
                  _buildButton('%'),
                  _buildButtonOperation('÷'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildButtonNumber('7'),
                  _buildButtonNumber('8'),
                  _buildButtonNumber('9'),
                  _buildButtonOperation('×'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildButtonNumber('4'),
                  _buildButtonNumber('5'),
                  _buildButtonNumber('6'),
                  _buildButtonOperation('−'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildButtonNumber('1'),
                  _buildButtonNumber('2'),
                  _buildButtonNumber('3'),
                  _buildButtonOperation('+'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildZeroButton(),
                  _buildButtonNumber('.'),
                  _buildButtonOperation('='),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDisplay(String number) {
    return Text(
      number,
      style: TextStyle(
        color: Colors.white,
        fontSize: 90,
      ),
    );
  }

  Widget _buildButtonOperation(String icon) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          icon,
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
      ),
    );
  }

  Widget _buildButtonNumber(String number) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xFF333333),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(color: Colors.white, fontSize: 27),
        ),
      ),
    );
  }

  Widget _buildButton(String operation) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xFFa5a5a5),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          operation,
          style: TextStyle(color: Colors.black, fontSize: 27),
        ),
      ),
    );
  }

  Widget _buildZeroButton() {
    return Container(
      width: 150,
      height: 70,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xFF333333),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          '0',
          style: TextStyle(color: Colors.white, fontSize: 27),
        ),
      ),
    );
  }
}
