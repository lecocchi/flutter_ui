import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final double width;
  final Color color;
  final String text;
  final double heigth;

  CalculatorButton({
    this.width = 70,
    @required this.color,
    @required this.text,
    this.heigth = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 70,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
      ),
    );
  }
}
