import 'package:flutter/material.dart';

class GenericButtonWidget extends StatelessWidget {
  final String label;
  final Color bgColor;
  final double margin;
  final TextStyle textStyle;

  const GenericButtonWidget({
    Key key,
    this.label,
    this.bgColor,
    this.margin,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: margin),
      child: FlatButton(
        onPressed: () {
          print('Hola');
        },
        child: Text(
          label,
          style: textStyle,
        ),
        color: bgColor,
        highlightColor: bgColor,
      ),
    );
  }
}
