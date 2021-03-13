import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App', debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(
              child: Image(
                image: NetworkImage('https://picsum.photos/600/900'),
              ),
            ),
            Column(
              children: [
                Time(),
                Icons(),
                Search(),
              ],
            ),
          ],
        ),
      ),

/*   preguntar por:      Image.asset(
          'assets/imagen.forest.png',
          width: 300,
          height: 400,
        ), 
*/
    );
  }
}

class Time extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style = TextStyle(color: Colors.white, fontSize: 30);
    return Column(
      children: <Widget>[
        Text(
          '01:52',
          style: style,
        ),
        Text(
          'Wednesday, Aug 26',
          style: style,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.cloud,
              size: 30,
              color: Colors.white,
            ),
            Text(
              '26 C°',
              style: style,
            )
          ],
        )
      ],
    );
  }
}

class Icons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icons(Icons.account_balance),
                Icons(Icons.account_balance),
                Icons(Icons.account_balance),
              ],
            )
          ],
        ),
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icons(Icons.account_balance),
                Icons(Icons.account_balance),
                Icons(Icons.account_balance),
              ],
            )
          ],
        )
      ],
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
