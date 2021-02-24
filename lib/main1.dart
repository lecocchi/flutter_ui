/* import 'package:flutter/material.dart';

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
                numberTwentyFour(),
                fila1(),
                fila2(),
                fila3(),
                fila4(),
                botonCero(),
              ],
            ),
          ),
        ));
  }

  Widget numberTwentyFour() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '24',
          style: TextStyle(color: Colors.white, fontSize: 75),
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

  Widget botonCero() {
    return Container(
        width: 200,
        height: 100,
        margin: EdgeInsets.all(7),
        decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
        child: Center(
          child: Text(
            '0',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ));
    //tirado de los pelos//
    Container(
      height: 60,
      width: 60,
      margin: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget letras() {
    return Container(
        child: Center(
      child: Text(
        'x',
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
    ));
  }

  Widget circulo() {
    return Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
    );
  }
}
 */
