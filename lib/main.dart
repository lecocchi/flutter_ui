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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 30,
                ),
                Time(),
                Spacer(),
                Applications(),
                Applications(),
                Search(),
                SizedBox(
                  height: 30,
                )
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

class Applications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.account_balance, color: Colors.white),
                Icon(
                  Icons.account_balance,
                  color: Colors.white,
                ),
                Icon(
                  Icons.account_balance,
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  Icons.account_balance,
                  color: Colors.white,
                ),
                Icon(
                  Icons.account_balance,
                  color: Colors.white,
                ),
                Icon(
                  Icons.account_balance,
                  color: Colors.white,
                ),
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
    return Container(
      height: 60,
      width: 250,
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        border: Border.all(color: Colors.black, width: 3),
        borderRadius: BorderRadius.circular(40),
        boxShadow: const [
          BoxShadow(blurRadius: 10),
        ],
      ),
      padding: EdgeInsets.only(right: 190),
      child: Icon(Icons.search),
    );
  }
}
