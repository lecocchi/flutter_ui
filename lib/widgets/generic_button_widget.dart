import 'package:flutter/material.dart';

class GenericButtonWidget extends StatelessWidget {
  final String label;
  final Color bgColor;
  final double margin;
  final TextStyle textStyle;
  final VoidCallback onPressed;

  const GenericButtonWidget({
    Key key,
    this.label,
    this.margin,
    this.bgColor,
    this.textStyle,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: margin),
      child: FlatButton(
        onPressed: () => onPressed(),
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
