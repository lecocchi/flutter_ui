import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  TitleWidget({
    @required this.titleLabel,
  });

  final String titleLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Text(titleLabel ?? '¡Bienvenido!',
          style: TextStyle(color: Color(0xFF00B4DF), fontSize: 50)),
    );
  }
}
