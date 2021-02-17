import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class CalculatorButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
    
  }
  
}

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
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "24",
                      style: TextStyle(color: Colors.white, fontSize: 80),
                    ),
                  ],
                ),
                Column(
                  children: [
                  buildFirstRow(),
                  buildSecondRow(),
                  buildThirdRow(),
                  buildForthRow(),
                  buildLastRow(),
                ]),
                
              ])),
        ));
  }

  Widget buildFirstRow() {
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        build_button(Colors.grey[400], "AC"),
        build_button(Colors.grey[400], "+/-"),
        build_button(Colors.grey[400], "%"),
        build_button(Colors.orange[400], "÷"),
      ],
    );
  }

  Widget buildSecondRow() {
    return Row(
      children: [
        build_button(Colors.grey[700], "7"),
        build_button(Colors.grey[700], "8"),
        build_button(Colors.grey[700], "9"),
        build_button(Colors.orange[400], "x"),
      ],
    );
  }

  Widget buildThirdRow() {
    return Row(
      children: [
        build_button(Colors.grey[700], "4"),
        build_button(Colors.grey[700], "5"),
        build_button(Colors.grey[700], "6"),
        build_button(Colors.orange[400], "-"),
      ],
    );
  }

  Widget buildForthRow() {
    return Row(
      children: [
        build_button(Colors.grey[700], "1"),
        build_button(Colors.grey[700], "2"),
        build_button(Colors.grey[700],"3"),
        build_button(Colors.orange[400], "+"),
      ],
    );
  }

  Widget buildLastRow() {
    return Row(
      children: [
        TextButton(
                    onPressed: () {},
                    child: Container(
                      child: Center(
                        child: Text("0"),
                       /*  Icons.exposure_zero,
                        color: Colors.white, */
                      ),
                      height: 90,
                      width: 195,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                          color: Colors.grey[700]),
                    )),
        build_button(Colors.grey[700], ","),
        build_button(Colors.orange[400], "="),
    
      ],
    );
  }

  Widget build_button(Color color, String text) {
    return TextButton(
        onPressed: () {},
        child: Container(
          child: Center(
            child: Text(text),
          ),
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            color: color,
          ),
        ));
  }
}
