import 'package:flutter/material.dart';

class SubtitleWidget extends StatelessWidget {
  const SubtitleWidget({
    Key key,
    @required this.label,
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Text(
        label ?? 'Inicio de sesión',
        style: TextStyle(
          fontSize: 15,
          color: Color(0xFF979797),
        ),
      ),
    );
  }
}
