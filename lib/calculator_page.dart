import 'package:flutter/material.dart';

import 'calculator_button.dart';

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
                  _buildButtonOperation('÷', Colors.orange, 70),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildButtonNumber('7'),
                  _buildButtonNumber('8'),
                  _buildButtonNumber('9'),
                  _buildButtonOperation('×', Colors.orange, 70),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildButtonNumber('4'),
                  _buildButtonNumber('5'),
                  _buildButtonNumber('6'),
                  _buildButtonOperation('−', Colors.orange, 70),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildButtonNumber('1'),
                  _buildButtonNumber('2'),
                  _buildButtonNumber('3'),
                  _buildButtonOperation('+', Colors.orange, 70),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildButtonOperation('0', Color(0xFF333333), 150),
                  CalculatorButton(
                      width: 70, color: Color(0xFF333333), text: '.'),
                  CalculatorButton(
                    'Leandro',
                    text: '=',
                    color: Colors.orange,
                    width: 70,
                    heigth: 70,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
