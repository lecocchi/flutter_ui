import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String text;

  CalculatorButton(this.color, this.text, this.width, this.height) {}

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Container(
          child: Center(
            child: Text(text, style: TextStyle(color: Colors.white)),
          ),
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            color: color,
          ),
        ));
  }
}
