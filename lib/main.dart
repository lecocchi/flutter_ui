import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                veinticuatro(),
                fila1(),
                fila2(),
                fila3(),
                fila4(),
                fila5(),
              ],
            ),
          ),
        ));
  }

  Widget veinticuatro() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      //margin: EdgeInsets.only(right: 100),//
      children: [
        Text(
          '24',
          style: TextStyle(color: Colors.white, fontSize: 100),
        ),
      ],
    );
  }

  Widget fila1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Faltaria pasar : Colors.grey[50] //
        circulo(), //color: Colors.grey[50] //
        circulo(),
        circulo(),
        circulo(),
      ],
    );
  }

  Widget fila2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        circulo(),
        circulo(),
        circulo(),
        circulo(),
      ],
    );
  }

  Widget fila3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        circulo(),
        circulo(),
        circulo(),
        circulo(),
      ],
    );
  }

  Widget fila4() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        circulo(),
        circulo(),
        circulo(),
        circulo(),
      ],
    );
  }

  Widget fila5() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        circulo(),
        circulo(),
        circulo(),
        circulo(),
      ],
    );
  }

  Widget circulo() {
    return Container(
      // padding: EdgeInsets.only(left: 80), para adentro//
      //margin: EdgeInsets.only(left: 10, right: 10), //para afuera//
      height: 130,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
    );
  }
}
