import 'package:flutter/material.dart';
import 'package:flutter_ui/login_view/login_controller.dart';

class GenericButtonWidget extends StatelessWidget {
  final String label;
  final Color bgColor;
  final double margin;
  final TextStyle textStyle;
  final LoginController loginController = new LoginController();

  GenericButtonWidget({
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
          loginController.validateUserAndPassword('Leandro', '123');
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
