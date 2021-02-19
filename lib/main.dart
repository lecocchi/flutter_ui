import 'package:flutter/material.dart';
import 'package:flutter_ui/calculatorButton.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
                child: Column(
              children: [
                Text("24", style: TextStyle(color: Colors.white, fontSize: 50)),
                Row(
                  children: [
                    CalculatorButton(Colors.grey[400], "AC", 70, 70),
                    CalculatorButton(Colors.grey[400], "+/-", 70, 70),
                    CalculatorButton(Colors.grey[400], "%", 70, 70),
                    CalculatorButton(Colors.orange[300], "÷", 70, 70),
                  ],
                ),
                Row(
                  children: [
                    CalculatorButton(Colors.grey[700], "7", 70, 70),
                    CalculatorButton(Colors.grey[700], "8", 70, 70),
                    CalculatorButton(Colors.grey[700], "9", 70, 70),
                    CalculatorButton(Colors.orange[300], "x", 70, 70),
                  ],
                ),
                Row(children: [
                  CalculatorButton(Colors.grey[700], "4", 70, 70),
                  CalculatorButton(Colors.grey[700], "5", 70, 70),
                  CalculatorButton(Colors.grey[700], "6", 70, 70),
                  CalculatorButton(Colors.orange[300], "-", 70, 70),
                ]),
                Row(children: [
                  CalculatorButton(Colors.grey[700], "1", 70, 70),
                  CalculatorButton(Colors.grey[700], "2", 70, 70),
                  CalculatorButton(Colors.grey[700], "3", 70, 70),
                  CalculatorButton(Colors.orange[300], "+", 70, 70),
                ]),
                Row(children: [
                  CalculatorButton(Colors.grey[700], "0", 140, 70),
                  CalculatorButton(Colors.grey[700], ",", 70, 70),
                  CalculatorButton(Colors.orange[300], "=", 70, 70),
                ])
              ],
            ))));
  }
}
